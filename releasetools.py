import common
import edify_generator
import os

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = """ui_print(" ");
ui_print("********************************************");
ui_print("* Galaxy S5 TencentOS        ");
ui_print("* ^.^     Welcome     ^.^                 ");
ui_print("* http://weibo.com/kwangaho         ");
ui_print("********************************************");
show_progress(0.750000, 15);"""
      return

def Writeboot(info):
    for filename in os.listdir("other"):
        if not (filename.find('.img')==-1):
            data=open(os.path.join(os.getcwd(),"other",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)

    extra_img_flash = """set_progress(0.800000);
show_progress(0.180000, 10);
ui_print("Update Boot image...");
package_extract_file("boot_klte.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
ifelse(is_substring("G900F", getprop("ro.bootloader")), package_extract_file("boot_kltexx.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("G9006V", getprop("ro.bootloader")), package_extract_file("boot_kltechn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("G9008V", getprop("ro.bootloader")), package_extract_file("boot_kltechn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("G900P", getprop("ro.bootloader")), package_extract_file("boot_kltespr.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("SCL23", getprop("ro.bootloader")), package_extract_file("boot_kltekdi.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("SCL23", getprop("ro.bootloader")), delete("/system/app/NfcNci.apk"));
ifelse(is_substring("SC04F", getprop("ro.bootloader")), package_extract_file("boot_kltekdi.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("SC04F", getprop("ro.bootloader")), delete("/system/app/NfcNci.apk"));
set_progress(1.000000);"""
    info.script.AppendExtra(extra_img_flash);

def RemoveCount(info) :
    remove_Count = """delete("/data/system/count");"""
    info.script.AppendExtra(remove_Count);

def UpdatePerm(info):
    extra_Perm = """set_metadata_recursive("/system/etc/init.d", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/init.d", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");"""
    info.script.AppendExtra(extra_Perm);


def FullOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveCount(info)
    Writeboot(info)