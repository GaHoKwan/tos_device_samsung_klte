.class public Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.super Ljava/lang/Object;
.source "WakeUpCmdRecognizer.java"


# static fields
.field public static final AL_Enroll:I = 0x65

.field public static final CHECK_Enroll_END:I = 0x67

.field public static final CHECK_Enroll_START:I = 0x66

.field static final ENROLL_CNT:I = 0x4

.field static final ERROR_CONFLICT_COMMAND:I = -0x4

.field static final ERROR_MIC_BUSY:I = -0x5

.field public static final Enroll_ConflictCommand:I = 0x68

.field public static final MODEL_STATUS_ENROLLED:I = 0x3

.field public static final MODEL_STATUS_NONE:I = 0x0

.field public static final MODEL_STATUS_NOTENROLLED:I = 0x2

.field public static final MODEL_STATUS_NOUSERS:I = 0x1

.field static final NUM_MODELS:I = 0x6

.field public static ROOT:Ljava/lang/String; = null

.field public static final Recording_Fail:I = 0x69

.field public static UDTAlwaysAPrecog:Ljava/lang/String; = null

.field public static UDTAlwaysAPsearch:Ljava/lang/String; = null

.field public static UDTMultiAPrecog:Ljava/lang/String; = null

.field public static UDTMultiAPsearch:Ljava/lang/String; = null

.field static final UDTSID_ENROLL_CNT:I = 0x4

.field static final UDTSID_NUM_USERS:I = 0x5

.field public static customVoiceTalkEnablePath:Ljava/lang/String; = null

.field private static isEnrollReady:Z = false

.field public static mExist:[I = null

.field public static m_lastEnroll_0:Ljava/lang/String; = null

.field public static m_lastEnroll_1:Ljava/lang/String; = null

.field public static m_lastEnroll_2:Ljava/lang/String; = null

.field public static m_lastEnroll_3:Ljava/lang/String; = null

.field public static m_lastEnroll_4:Ljava/lang/String; = null

.field public static m_lastEnroll_5:Ljava/lang/String; = null

.field public static final m_strModelX86:Ljava/lang/String; = "/system/wakeupdata/samsung/models_x86.bin"

.field public static m_strSensoryCustomModelPath:Ljava/lang/String;

.field private static sVoiceLanguageFilePath:Ljava/lang/String;

.field public static typeDefine:Ljava/lang/String;


# instance fields
.field public CommandNumber:S

.field private final PACKAGENAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public WType:I

.field private absBeam:F

.field private acousticModelPathname:Ljava/lang/String;

.field private aoffset:F

.field private background_enroll:Ljava/lang/Thread;

.field private beam:F

.field private final brNewAcousticModelPathname:Ljava/lang/String;

.field private final brNewSearchGrammarPathname:Ljava/lang/String;

.field private final chAcousticModelPathname:Ljava/lang/String;

.field private final chNewAcousticModelPathname:Ljava/lang/String;

.field private final chNewSearchGrammarPathname:Ljava/lang/String;

.field private final chSearchGrammarPathname:Ljava/lang/String;

.field conflictCommandType:[S

.field public consoleInitReturn:J

.field private final deAcousticModelPathname:Ljava/lang/String;

.field private final deNewAcousticModelPathname:Ljava/lang/String;

.field private final deNewSearchGrammarPathname:Ljava/lang/String;

.field private final deSearchGrammarPathname:Ljava/lang/String;

.field private debugSessionPathname:Ljava/lang/String;

.field private delay:F

.field private doLoggingParam:I

.field private final elNewAcousticModelPathname:Ljava/lang/String;

.field private final elNewSearchGrammarPathname:Ljava/lang/String;

.field private final esAcousticModelPathname:Ljava/lang/String;

.field private final esNewAcousticModelPathname:Ljava/lang/String;

.field private final esNewSearchGrammarPathname:Ljava/lang/String;

.field private final esSearchGrammarPathname:Ljava/lang/String;

.field private final frAcousticModelPathname:Ljava/lang/String;

.field private final frNewAcousticModelPathname:Ljava/lang/String;

.field private final frNewSearchGrammarPathname:Ljava/lang/String;

.field private final frSearchGrammarPathname:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field protected isAudioFocus:Z

.field private isCustomVoiceTalkEnable:Z

.field public isEnableChineseWakeUp:Z

.field public isEnableJapaneseWakeUp:Z

.field public isEnableRussianWakeUp:Z

.field private isMultipleWakeUpEnable:Z

.field public isNewVersionSensoryWakeUpLibExist:Z

.field private isRecording:Z

.field private isRunning_all:Z

.field private isRunning_enroll:Z

.field private isSamsungWakeUpLibExist:Z

.field private isSensoryInitialize:Z

.field public isSensoryUDTSIDExist:Z

.field private isSensoryWakeUpLibExist:Z

.field private final itAcousticModelPathname:Ljava/lang/String;

.field private final itNewAcousticModelPathname:Ljava/lang/String;

.field private final itNewSearchGrammarPathname:Ljava/lang/String;

.field private final itSearchGrammarPathname:Ljava/lang/String;

.field private final jpAcousticModelPathname:Ljava/lang/String;

.field private final jpNewAcousticModelPathname:Ljava/lang/String;

.field private final jpNewSearchGrammarPathname:Ljava/lang/String;

.field private final jpSearchGrammarPathname:Ljava/lang/String;

.field private final koAcousticModelPathname:Ljava/lang/String;

.field private final koNewAcousticModelPathname:Ljava/lang/String;

.field private final koNewSearchGrammarPathname:Ljava/lang/String;

.field private final koSearchGrammarPathname:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field public mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

.field private mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

.field public mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

.field public mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

.field public mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

.field public mVElib:Lcom/samsung/voiceshell/VoiceEngine;

.field private final m_UBMpath:Ljava/lang/String;

.field private final newVersionSensorySoFilePath:Ljava/lang/String;

.field public returnLoadUser:I

.field private final ruAcousticModelPathname:Ljava/lang/String;

.field private final ruNewAcousticModelPathname:Ljava/lang/String;

.field private final ruNewSearchGrammarPathname:Ljava/lang/String;

.field private final ruSearchGrammarPathname:Ljava/lang/String;

.field private searchGrammarPathname:Ljava/lang/String;

.field private final sensorySoFilePath:Ljava/lang/String;

.field private final sensoryUDTSIDSoFilePath:Ljava/lang/String;

.field public sensoryUDTSIDThreadEnable:Z

.field private final ukAcousticModelPathname:Ljava/lang/String;

.field private final ukNewAcousticModelPathname:Ljava/lang/String;

.field private final ukNewSearchGrammarPathname:Ljava/lang/String;

.field private final ukSearchGrammarPathname:Ljava/lang/String;

.field private final usAcousticModelPathname:Ljava/lang/String;

.field private final usNewAcousticModelPathname:Ljava/lang/String;

.field private final usNewSearchGrammarPathname:Ljava/lang/String;

.field private final usSearchGrammarPathname:Ljava/lang/String;

.field private final voiceEngineSoFilePath:Ljava/lang/String;

.field private weHaveNoModel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_0.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 33
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_1.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 34
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_2.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 35
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_3.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 36
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_4.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 37
    const-string v0, "/data/data/com.vlingo.midas/lastEnrollUtt_5.pcm"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 39
    const-string v0, "/data/data/com.vlingo.midas/"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 40
    const-string v0, "/data/data/com.vlingo.midas/typeDefine.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 41
    const-string v0, "/data/data/com.vlingo.midas/kwd_1.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 42
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_Deep_search.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 83
    const/4 v0, 0x6

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    .line 170
    const-string v0, "/data/data/com.vlingo.midas/files/language.bin"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 182
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 183
    const-string v0, "/data/data/com.vlingo.midas/UDT_Always_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 185
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_recog.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 186
    const-string v0, "/data/data/com.vlingo.midas/UDT_Multi_AP_search.raw"

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .prologue
    .line 192
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .param p2, "strRootPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_UBMpath:Ljava/lang/String;

    .line 43
    const-string v0, "com.vlingo.midas"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->PACKAGENAME:Ljava/lang/String;

    .line 47
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 48
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 49
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 51
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 55
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 56
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 58
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 60
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 61
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 76
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 78
    iput-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 80
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    .line 86
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 87
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 89
    const-string v0, "WakeUpCmdRecognizer"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 93
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 95
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 96
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 98
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    .line 99
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    .line 101
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    .line 102
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    .line 103
    iput v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    .line 105
    const-string v0, "/system/lib/libSamsungVoiceEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->voiceEngineSoFilePath:Ljava/lang/String;

    .line 106
    const-string v0, "/system/lib/libWakeUpSensory.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensorySoFilePath:Ljava/lang/String;

    .line 107
    const-string v0, "/system/lib/libSensoryWakeUpEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->newVersionSensorySoFilePath:Ljava/lang/String;

    .line 108
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDSoFilePath:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    .line 114
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 115
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 117
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 120
    const-string v0, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koAcousticModelPathname:Ljava/lang/String;

    .line 121
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usAcousticModelPathname:Ljava/lang/String;

    .line 122
    const-string v0, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukAcousticModelPathname:Ljava/lang/String;

    .line 123
    const-string v0, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esAcousticModelPathname:Ljava/lang/String;

    .line 124
    const-string v0, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frAcousticModelPathname:Ljava/lang/String;

    .line 125
    const-string v0, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deAcousticModelPathname:Ljava/lang/String;

    .line 126
    const-string v0, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itAcousticModelPathname:Ljava/lang/String;

    .line 127
    const-string v0, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chAcousticModelPathname:Ljava/lang/String;

    .line 128
    const-string v0, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpAcousticModelPathname:Ljava/lang/String;

    .line 129
    const-string v0, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruAcousticModelPathname:Ljava/lang/String;

    .line 131
    const-string v0, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koSearchGrammarPathname:Ljava/lang/String;

    .line 132
    const-string v0, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usSearchGrammarPathname:Ljava/lang/String;

    .line 133
    const-string v0, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukSearchGrammarPathname:Ljava/lang/String;

    .line 134
    const-string v0, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esSearchGrammarPathname:Ljava/lang/String;

    .line 135
    const-string v0, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frSearchGrammarPathname:Ljava/lang/String;

    .line 136
    const-string v0, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deSearchGrammarPathname:Ljava/lang/String;

    .line 137
    const-string v0, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itSearchGrammarPathname:Ljava/lang/String;

    .line 138
    const-string v0, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chSearchGrammarPathname:Ljava/lang/String;

    .line 139
    const-string v0, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpSearchGrammarPathname:Ljava/lang/String;

    .line 140
    const-string v0, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruSearchGrammarPathname:Ljava/lang/String;

    .line 143
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewAcousticModelPathname:Ljava/lang/String;

    .line 144
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewAcousticModelPathname:Ljava/lang/String;

    .line 145
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewAcousticModelPathname:Ljava/lang/String;

    .line 146
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewAcousticModelPathname:Ljava/lang/String;

    .line 147
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewAcousticModelPathname:Ljava/lang/String;

    .line 148
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewAcousticModelPathname:Ljava/lang/String;

    .line 149
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewAcousticModelPathname:Ljava/lang/String;

    .line 150
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewAcousticModelPathname:Ljava/lang/String;

    .line 151
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewAcousticModelPathname:Ljava/lang/String;

    .line 152
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewAcousticModelPathname:Ljava/lang/String;

    .line 153
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewAcousticModelPathname:Ljava/lang/String;

    .line 154
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewAcousticModelPathname:Ljava/lang/String;

    .line 156
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->koNewSearchGrammarPathname:Ljava/lang/String;

    .line 157
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->usNewSearchGrammarPathname:Ljava/lang/String;

    .line 158
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ukNewSearchGrammarPathname:Ljava/lang/String;

    .line 159
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->esNewSearchGrammarPathname:Ljava/lang/String;

    .line 160
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->elNewSearchGrammarPathname:Ljava/lang/String;

    .line 161
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->frNewSearchGrammarPathname:Ljava/lang/String;

    .line 162
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->deNewSearchGrammarPathname:Ljava/lang/String;

    .line 163
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->itNewSearchGrammarPathname:Ljava/lang/String;

    .line 164
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->chNewSearchGrammarPathname:Ljava/lang/String;

    .line 165
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->jpNewSearchGrammarPathname:Ljava/lang/String;

    .line 166
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ruNewSearchGrammarPathname:Ljava/lang/String;

    .line 167
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->brNewSearchGrammarPathname:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 173
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 174
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 176
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 177
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 180
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 284
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    .line 1381
    new-instance v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;

    invoke-direct {v0, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$3;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 197
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/voiceshell/WakeUpUtils;->GetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: WakeUpCmdRecognizer Create, Set data, policy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: WakeUpCmdRecognizer, strRootPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0, p2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 204
    invoke-static {p2}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 205
    invoke-static {p2}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    .line 208
    const-string v0, "/system/lib/libSensoryUDTSIDEngine.so"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    .line 210
    const-string v0, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    .line 211
    const-string v0, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    .line 212
    const-string v0, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    .line 214
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 223
    :goto_0
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 224
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungVoiceLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    .line 225
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryLib()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    .line 227
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acousticModelPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchGrammarPathname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSamsungWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNewVersionSensoryWakeUpLibExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSensoryUDTSIDExist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    goto/16 :goto_0
.end method

.method private InitializeVerify()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1131
    const/4 v1, 0x0

    .line 1132
    .local v1, "iResult":I
    const/4 v0, 0x0

    .line 1134
    .local v0, "NumSets":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_0

    .line 1167
    :goto_0
    invoke-static {v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    move v2, v1

    .line 1169
    :goto_1
    return v2

    .line 1139
    :cond_0
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    move-result v0

    .line 1141
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of complete sets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    if-nez v0, :cond_1

    .line 1145
    const/16 v2, -0xa

    goto :goto_1

    .line 1148
    :cond_1
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-nez v2, :cond_2

    .line 1150
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SECURE LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_2
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v2, v6, :cond_3

    .line 1154
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NORMAL LOCK-SCREEN with WType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_3
    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1158
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VOICE-TALK with Wtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_4
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    .line 1162
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v3, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/voiceshell/VoiceEngine;->initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1164
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    goto/16 :goto_0
.end method

.method private StartVerify()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1174
    const/4 v0, 0x0

    .line 1176
    .local v0, "iResult":I
    invoke-static {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1178
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    .line 1180
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_4

    .line 1182
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isMultipleWakeUpEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v1, v2, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: StartVerify, loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1191
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1200
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    if-nez v1, :cond_2

    .line 1202
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_5

    .line 1212
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1214
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: StartVerify, Failed to do startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v0, -0x2

    .line 1218
    :cond_3
    return v0

    .line 1196
    :cond_4
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1197
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->setAdaptationModelPath(Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_5
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->startVerify()I

    move-result v0

    .line 1208
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: startVerify result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private TerminateVerify()I
    .locals 2

    .prologue
    .line 1222
    const/4 v0, 0x0

    .line 1224
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1229
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_2

    .line 1237
    :cond_1
    :goto_0
    return v0

    .line 1232
    :cond_2
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateVerify()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1310
    if-nez p1, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return v1

    .line 1314
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1322
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isNewVersionSensoryLib()Z
    .locals 3

    .prologue
    .line 1369
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSensoryWakeUpEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1370
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1372
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSensoryWakeUpEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v1, 0x0

    .line 1377
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSamsungVoiceLib()Z
    .locals 3

    .prologue
    .line 1328
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libSamsungVoiceEngine.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1329
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Error : Could not find libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v1, 0x0

    .line 1336
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSensoryLib()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1342
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/lib/libWakeUpSensory.so"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v0, "mFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v1, "sensoryAcousticModelFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v2, "sensorySearchGrammarFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v4, :cond_0

    .line 1348
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find libWakeUpSensory.so or libSensoryWakeUpEngine.so"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :goto_0
    return v3

    .line 1351
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1353
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensoryAcousticModelFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1358
    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v5, "Error : Could not find sensorySearchGrammarFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1363
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1696
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1697
    .local v3, "mFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 1698
    .local v4, "mFileInputStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 1700
    .local v0, "data":[B
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1703
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1704
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .local v5, "mFileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 1705
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    .line 1706
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1708
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 1727
    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    :goto_0
    return-object v6

    .line 1710
    :catch_0
    move-exception v1

    .line 1712
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 1715
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1721
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .line 1723
    goto :goto_0

    .line 1716
    :catch_1
    move-exception v2

    .line 1718
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_1
    move-object v6, v7

    .line 1727
    goto :goto_0

    .line 1710
    .end local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "mFileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "mFileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private waitForBackgroundEnroll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 917
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 918
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 920
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waitForBackgroundEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :try_start_0
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected InitializeEnroll()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1007
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: InitializeEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, "iResult":I
    invoke-static {v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 1013
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_0

    .line 1016
    sput-boolean v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1018
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    invoke-virtual {v1, v2, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadModels(Ljava/lang/String;S)I

    move-result v1

    iput v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    .line 1019
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: loadUsers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->returnLoadUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    sput-boolean v6, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1032
    return v0

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    sget-object v4, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mExist:[I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->checkFileExistence(Ljava/lang/String;I[I)I

    .line 1025
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1, v5}, Lcom/samsung/voiceshell/VoiceEngine;->setMode(I)V

    .line 1026
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    const-string v2, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-virtual {v1, v2}, Lcom/samsung/voiceshell/VoiceEngine;->initializeEnroll(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected ProcessEnroll()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1037
    const/4 v0, -0x3

    .line 1039
    .local v0, "iResult":I
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: ProcessEnroll, Failed to do startRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v0, -0x5

    .line 1048
    :cond_0
    sget-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x5

    if-eq v0, v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aput-short v5, v1, v5

    .line 1052
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    iget-short v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/voiceshell/VoiceEngine;->processEnroll(Ljava/lang/String;S[S)I

    move-result v0

    .line 1054
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->conflictCommandType:[S

    aget-short v1, v1, v5

    iget-short v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    if-eq v1, v2, :cond_1

    .line 1056
    const/4 v0, -0x4

    .line 1060
    :cond_1
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v1, :cond_2

    .line 1062
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    .line 1065
    :cond_2
    return v0
.end method

.method public SendHandlerMessage(III)V
    .locals 3
    .param p1, "job"    # I
    .param p2, "count"    # I
    .param p3, "check"    # I

    .prologue
    .line 303
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 304
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "job"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v2, "Enroll_Count"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v2, "EnrollCheck_Count"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 309
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method public SetDataPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "strRootPath"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sput-object p1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_0.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_0:Ljava/lang/String;

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_1.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_1:Ljava/lang/String;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_2.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_2:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_3.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_3:Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_4.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_4:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lastEnrollUtt_5.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_lastEnroll_5:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_recog.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPrecog:Ljava/lang/String;

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Multi_AP_search.raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTMultiAPsearch:Ljava/lang/String;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "typeDefine.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kwd_1.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UDT_Always_Deep_search.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "files/language.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, ROOT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method protected TerminateEnroll()I
    .locals 3

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "secMM: TerminateEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v0, 0x0

    .line 1113
    .local v0, "iResult":I
    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    .line 1126
    return v0

    .line 1118
    :cond_1
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v1}, Lcom/samsung/voiceshell/VoiceEngine;->terminateEnroll()I

    move-result v0

    goto :goto_0
.end method

.method public choiceMultipleWakeUpIntent(I)Landroid/content/Intent;
    .locals 11
    .param p1, "resultCommand"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1242
    const/4 v2, 0x0

    .line 1243
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 1246
    .local v1, "assignCommandArray":[I
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-virtual {p0, v1, v7}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->functionAssignment([II)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1250
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, functionAssignment error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    aput v6, v1, v7

    .line 1252
    aput v6, v1, v8

    .line 1253
    aput v6, v1, v9

    .line 1254
    aput v6, v1, v10

    .line 1257
    :cond_0
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    packed-switch p1, :pswitch_data_0

    .line 1284
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, resultCommand is none : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_1

    .line 1290
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: choiceMultipleWakeUpIntent, intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :goto_1
    return-object v2

    .line 1263
    :pswitch_1
    const-string v0, "custom.wakeup.screen"

    .line 1264
    .local v0, "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1265
    .restart local v2    # "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.vlingo.midas"

    const-string v5, "com.vlingo.midas.gui.ConversationActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1267
    const v3, 0x10208000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1269
    const-string v3, "custom.wakeup.screen"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1272
    .end local v0    # "EXTRA_CUSTOM_WAKEUP":Ljava/lang/String;
    :pswitch_2
    aget v3, v1, v7

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1273
    goto :goto_0

    .line 1275
    :pswitch_3
    aget v3, v1, v8

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1276
    goto :goto_0

    .line 1278
    :pswitch_4
    aget v3, v1, v9

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1279
    goto :goto_0

    .line 1281
    :pswitch_5
    aget v3, v1, v10

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1282
    goto :goto_0

    .line 1294
    :cond_1
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: choiceMultipleWakeUpIntent, intent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public destroy()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 935
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "secMM: destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 938
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 940
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 941
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 943
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopEnroll()I

    .line 944
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->stopVerify()I

    .line 946
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_5

    .line 949
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->waitForBackgroundEnroll()V

    .line 951
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "waitForBackgroundEnroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    if-eqz v0, :cond_0

    .line 954
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 955
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mVElib = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_2

    .line 960
    iput-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 962
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v0, :cond_1

    .line 964
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeModels()V

    .line 966
    :cond_1
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 967
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryUDTSIDEngine = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_7

    .line 972
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    if-eqz v0, :cond_4

    .line 974
    iget-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 976
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotClose(J)V

    .line 977
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iput-wide v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 979
    :cond_3
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 991
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v0, :cond_5

    .line 992
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->destroy()V

    .line 993
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 994
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mDummyRecorder = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_5
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_6

    .line 1000
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    .line 1001
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mResultListener = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_6
    return-void

    .line 984
    :cond_7
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    if-eqz v0, :cond_4

    .line 986
    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    .line 987
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "destroy : mSensoryJNI = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public functionAssignment([II)I
    .locals 4
    .param p1, "AssignArray"    # [I
    .param p2, "RW"    # I

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: functionAssignment, typeDefine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    sget-object v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->functionAssignment(Ljava/lang/String;[II)I

    move-result v0

    .line 1306
    .local v0, "result":I
    return v0
.end method

.method public getEnableWakeUp()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    return v0
.end method

.method public init()I
    .locals 9

    .prologue
    const/16 v8, 0x3e80

    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 343
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: init"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSensoryUDTSIDExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 623
    :goto_0
    return v2

    .line 352
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 355
    goto :goto_0

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 360
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    .line 363
    :cond_2
    new-instance v2, Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    iget-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-direct {v2, v4, v5, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;-><init>(Lcom/samsung/voiceshell/VoiceEngineResultListener;ZZ)V

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    .line 364
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-nez v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v4, "secMM: init, Failed to allocate AudioRecordHaydn"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 367
    goto :goto_0

    .line 370
    :cond_3
    invoke-static {}, Lcom/samsung/voiceshell/VoiceEngineWrapper;->getInstance()Lcom/samsung/voiceshell/VoiceEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    .line 372
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_6

    .line 374
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    .line 376
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    if-eqz v2, :cond_5

    .line 378
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v0

    .line 379
    .local v0, "lTrig":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 381
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, pre-trig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_4
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initSession()J

    move-result-wide v0

    .line 385
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v2, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->setSessionValue(J)V

    .line 388
    .end local v0    # "lTrig":J
    :cond_5
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: SensoryUDTSIDEngine init complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_7

    .line 397
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngineWrapper;->getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    .line 404
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_8

    .line 406
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v8}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 425
    :goto_2
    iput-boolean v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_all:Z

    .line 427
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;

    invoke-direct {v3, p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$2;-><init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    .line 621
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->background_enroll:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 623
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 401
    :cond_7
    invoke-static {}, Lcom/vlingo/client/phrasespotter/SensoryEngineWrapper;->getInstance()Lcom/vlingo/client/phrasespotter/SensoryJNI;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    goto :goto_1

    .line 411
    :cond_8
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mVElib:Lcom/samsung/voiceshell/VoiceEngine;

    invoke-virtual {v2, v7}, Lcom/samsung/voiceshell/VoiceEngine;->setIsRunningVoiceEngine(Z)V

    .line 413
    const-string v2, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 415
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v8}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_2

    .line 420
    :cond_9
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_2
.end method

.method public isWakeUpFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 1731
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1733
    const/4 v1, 0x1

    .line 1736
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sensoryProcessEnroll()I
    .locals 6

    .prologue
    .line 1070
    const/4 v0, -0x3

    .line 1071
    .local v0, "iResult":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v2, :cond_5

    .line 1073
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->startRecord()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: sensoryProcessEnroll, Failed to do startRecord"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v0, -0x5

    .line 1085
    :cond_0
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: start sensoryProcessEnroll, trig : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryUDTSIDEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;

    invoke-virtual {v4}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getSessionValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    sget-boolean v2, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnrollReady:Z

    if-eqz v2, :cond_3

    const/4 v2, -0x5

    if-eq v0, v2, :cond_3

    .line 1089
    :cond_1
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v2, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    if-nez v2, :cond_1

    .line 1093
    :cond_2
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/samsung/voiceshell/AudioRecordHaydn;->isPipeRecogEnrollSuccess:Z

    .line 1096
    :cond_3
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: stop sensoryProcessEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    if-eqz v2, :cond_4

    .line 1100
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->closeRecord()V

    :cond_4
    move v1, v0

    .line 1103
    .end local v0    # "iResult":I
    .local v1, "iResult":I
    :goto_0
    return v1

    .line 1081
    .end local v1    # "iResult":I
    .restart local v0    # "iResult":I
    :cond_5
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: sensoryProcessEnroll, mDummyRecorder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1082
    .end local v0    # "iResult":I
    .restart local v1    # "iResult":I
    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    .line 239
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: setContext, mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 249
    .local v0, "nUserID":I
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, userID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    if-nez v0, :cond_1

    .line 255
    const-string v1, "/data/data/com.vlingo.midas/"

    .line 263
    .local v1, "strRootPath":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, strRootPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->SetDataPath(Ljava/lang/String;)V

    .line 266
    invoke-static {v1}, Lcom/samsung/voiceshell/MultipleWakeUp;->SetDataPath(Ljava/lang/String;)V

    .line 267
    invoke-static {v1}, Lcom/samsung/voiceshell/VoiceEngine;->SetDataPath(Ljava/lang/String;)V

    .line 269
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_2

    .line 271
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 277
    :goto_2
    return-void

    .line 245
    .end local v0    # "nUserID":I
    .end local v1    # "strRootPath":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: setContext, mContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    .restart local v0    # "nUserID":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/user/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "strRootPath":Ljava/lang/String;
    goto :goto_1

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setLanguage()V

    goto :goto_2
.end method

.method public setLanguage()V
    .locals 6

    .prologue
    .line 1403
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1404
    .local v2, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1405
    .local v1, "stringCountry":Ljava/lang/String;
    sget-object v3, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "sVoiceLanguage":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sVoiceLanguage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    if-eqz v0, :cond_b

    .line 1413
    const-string v3, "ko-KR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1415
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1416
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    const-string v3, "en-GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1420
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1421
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1423
    :cond_2
    const-string v3, "en-US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1425
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1426
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1428
    :cond_3
    const-string v3, "es-ES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1430
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1431
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1433
    :cond_4
    const-string v3, "v-es-LA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1435
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1436
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1438
    :cond_5
    const-string v3, "fr-FR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1440
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1441
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1443
    :cond_6
    const-string v3, "de-DE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1445
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1446
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1448
    :cond_7
    const-string v3, "it-IT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1450
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1451
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto :goto_0

    .line 1453
    :cond_8
    const-string v3, "zh-CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    if-eqz v3, :cond_9

    .line 1455
    const-string v3, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1456
    const-string v3, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1458
    :cond_9
    const-string v3, "ja-JP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    if-eqz v3, :cond_a

    .line 1460
    const-string v3, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1461
    const-string v3, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1463
    :cond_a
    const-string v3, "ru-RU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    if-eqz v3, :cond_0

    .line 1465
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1466
    const-string v3, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1471
    :cond_b
    if-eqz v2, :cond_0

    .line 1473
    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1475
    const-string v3, "/system/wakeupdata/sensory/nn_ko_mfcc_16k_15_big_250_v2_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1476
    const-string v3, "/system/wakeupdata/sensory/ko_hi_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1478
    :cond_c
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1480
    const-string v3, "GB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1482
    const-string v3, "/system/wakeupdata/sensory/nn_en_uk_mfcc_16k_15_big_250_v2_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1483
    const-string v3, "/system/wakeupdata/sensory/en_gb_hg_tuned1_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1487
    :cond_d
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1488
    const-string v3, "/system/wakeupdata/sensory/en_us_hg_tuned3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1491
    :cond_e
    const-string v3, "es"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1493
    const-string v3, "/system/wakeupdata/sensory/nn_es_mfcc_16k_15_big_250_v1_1.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1494
    const-string v3, "/system/wakeupdata/sensory/es_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1496
    :cond_f
    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1498
    const-string v3, "/system/wakeupdata/sensory/nn_fr_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1499
    const-string v3, "/system/wakeupdata/sensory/fr_galaxy_tuned8_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1501
    :cond_10
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1503
    const-string v3, "/system/wakeupdata/sensory/nn_de_mfcc_16k_15_big_250_v3_0.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1504
    const-string v3, "/system/wakeupdata/sensory/de_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1506
    :cond_11
    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1508
    const-string v3, "/system/wakeupdata/sensory/nn_it_mfcc_16k_15_big_250_v3_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1509
    const-string v3, "/system/wakeupdata/sensory/it_galaxy_tuned_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1511
    :cond_12
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableChineseWakeUp:Z

    if-eqz v3, :cond_13

    .line 1513
    const-string v3, "/system/wakeupdata/sensory/nn_zh_mfcc_16k_15_big_250_v2_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1514
    const-string v3, "/system/wakeupdata/sensory/zh_galaxy_9_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1516
    :cond_13
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableJapaneseWakeUp:Z

    if-eqz v3, :cond_14

    .line 1518
    const-string v3, "/system/wakeupdata/sensory/nn_ja_mfcc_16k_15_big_250_v4_2.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1519
    const-string v3, "/system/wakeupdata/sensory/ja_haroo_galaxy_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0

    .line 1521
    :cond_14
    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isEnableRussianWakeUp:Z

    if-eqz v3, :cond_0

    .line 1523
    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_big_250_v4_5.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1524
    const-string v3, "/system/wakeupdata/sensory/ru_en_galaxy_en3_endsil_cg.raw"

    iput-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setNewVersionLanguage()V
    .locals 6

    .prologue
    .line 1532
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1533
    .local v1, "modelPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1535
    .local v0, "grammarPath":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1536
    .local v4, "stringLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1537
    .local v3, "stringCountry":Ljava/lang/String;
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sVoiceLanguageFilePath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1539
    .local v2, "sVoiceLanguage":Ljava/lang/String;
    if-eqz v2, :cond_e

    .line 1541
    const-string v5, "ko-KR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1543
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1544
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    .line 1678
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v5, :cond_1

    .line 1680
    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1682
    sget-object v1, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    .line 1683
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    .line 1687
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1689
    iput-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 1690
    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 1692
    :cond_2
    return-void

    .line 1546
    :cond_3
    const-string v5, "en-GB"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1548
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1549
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto :goto_0

    .line 1551
    :cond_4
    const-string v5, "en-US"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1553
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1554
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto :goto_0

    .line 1556
    :cond_5
    const-string v5, "es-ES"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1558
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1559
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto :goto_0

    .line 1561
    :cond_6
    const-string v5, "v-es-LA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1563
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1564
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto :goto_0

    .line 1566
    :cond_7
    const-string v5, "fr-FR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1568
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1569
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto :goto_0

    .line 1571
    :cond_8
    const-string v5, "de-DE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1573
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1574
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto :goto_0

    .line 1576
    :cond_9
    const-string v5, "it-IT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1578
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1579
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_0

    .line 1581
    :cond_a
    const-string v5, "zh-CN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1583
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1584
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_0

    .line 1586
    :cond_b
    const-string v5, "ja-JP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1588
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1589
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_0

    .line 1591
    :cond_c
    const-string v5, "ru-RU"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1593
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1594
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_0

    .line 1596
    :cond_d
    const-string v5, "pt-BR"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1598
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1599
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_0

    .line 1604
    :cond_e
    if-eqz v4, :cond_0

    .line 1606
    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1608
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ko_kr_v2.raw"

    .line 1609
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ko_kr_v2.raw"

    goto/16 :goto_0

    .line 1611
    :cond_f
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1613
    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1615
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_gb_v2.raw"

    .line 1616
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_gb_v2.raw"

    goto/16 :goto_0

    .line 1620
    :cond_10
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_en_us_v2.raw"

    .line 1621
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_en_us_v2.raw"

    goto/16 :goto_0

    .line 1624
    :cond_11
    const-string v5, "es"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1626
    const-string v5, "ES"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1628
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_es_v2.raw"

    .line 1629
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_es_v2.raw"

    goto/16 :goto_0

    .line 1633
    :cond_12
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_es_la_v2.raw"

    .line 1634
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_es_la_v2.raw"

    goto/16 :goto_0

    .line 1637
    :cond_13
    sget-object v5, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1639
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_fr_fr_v2.raw"

    .line 1640
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_fr_fr_v2.raw"

    goto/16 :goto_0

    .line 1642
    :cond_14
    sget-object v5, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1644
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_de_de_v2.raw"

    .line 1645
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_de_de_v2.raw"

    goto/16 :goto_0

    .line 1647
    :cond_15
    sget-object v5, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1649
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_it_it_v2.raw"

    .line 1650
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_it_it_v2.raw"

    goto/16 :goto_0

    .line 1652
    :cond_16
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1654
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_zh_cn_v2.raw"

    .line 1655
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_zh_cn_v2.raw"

    goto/16 :goto_0

    .line 1657
    :cond_17
    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1659
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ja_jp_v2.raw"

    .line 1660
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ja_jp_v2.raw"

    goto/16 :goto_0

    .line 1662
    :cond_18
    const-string v5, "ru"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1664
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_ru_ru_v2.raw"

    .line 1665
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_ru_ru_v2.raw"

    goto/16 :goto_0

    .line 1667
    :cond_19
    const-string v5, "pt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1669
    const-string v5, "BR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1671
    const-string v1, "/system/wakeupdata/sensory/samsung_wakeup_am_quiet_pt_br_v2.raw"

    .line 1672
    const-string v0, "/system/wakeupdata/sensory/samsung_wakeup_grammar_quiet_pt_br_v2.raw"

    goto/16 :goto_0
.end method

.method public startEnroll(S)I
    .locals 1
    .param p1, "cmNumber"    # S

    .prologue
    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->startEnroll(SS)I

    move-result v0

    return v0
.end method

.method public startEnroll(SS)I
    .locals 7
    .param p1, "cmNumber"    # S
    .param p2, "wakeUpType"    # S

    .prologue
    const/16 v6, 0x3e80

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 634
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startEnroll, cmNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wakeUpType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_0

    .line 638
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_0
    return v0

    .line 643
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_1

    .line 645
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_1
    invoke-static {v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->SetRecordingMode(I)V

    .line 651
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v2, :cond_2

    .line 653
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    .line 655
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 671
    :goto_1
    iput p2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 672
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v0}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 674
    iput-short p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->CommandNumber:S

    .line 675
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    move v0, v1

    .line 677
    goto :goto_0

    .line 659
    :cond_2
    const-string v2, "/system/wakeupdata/samsung/models_x86.bin"

    invoke-virtual {p0, v2}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isWakeUpFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    invoke-virtual {v2, v6}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_1

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Sample Rate is 44100"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setSampleRate(I)V

    goto :goto_1
.end method

.method public startVerify(I)I
    .locals 13
    .param p1, "wakeType"    # I

    .prologue
    const/4 v0, -0x1

    const/16 v7, -0xa

    const/16 v1, -0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 708
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secMM: startVerify, wakeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v11, 0x0

    .line 712
    .local v11, "iResult":I
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_0

    .line 714
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSamsungWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSensoryUDTSIDExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_0
    return v0

    .line 719
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-nez v2, :cond_1

    .line 721
    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: Not exist library, isSensoryWakeUpLibExist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 725
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->setNewVersionLanguage()V

    .line 730
    :cond_2
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 732
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-nez v0, :cond_3

    .line 734
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 742
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 744
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    .line 746
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    if-eqz v0, :cond_3

    .line 748
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRecording:Z

    .line 749
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_1
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "waiting for recording end"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_3
    iput p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    .line 761
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    invoke-virtual {v0, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWakeUpType(I)V

    .line 763
    new-instance v12, Ljava/io/File;

    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 765
    .local v12, "mFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 767
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v1, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_4
    move v0, v1

    .line 771
    goto :goto_0

    .line 752
    .end local v12    # "mFile":Ljava/io/File;
    :catch_0
    move-exception v10

    .line 753
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v12    # "mFile":Ljava/io/File;
    :cond_5
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->InitializeVerify()I

    move-result v11

    .line 776
    if-ne v11, v7, :cond_b

    .line 778
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 780
    :cond_6
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 781
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 782
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    if-eqz v0, :cond_7

    .line 784
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;

    invoke-interface {v0, v7, v5}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnVerifyResult(IS)V

    :cond_7
    move v0, v11

    .line 786
    goto/16 :goto_0

    .line 790
    :cond_8
    iput-boolean v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 791
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    .line 800
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->m_strSensoryCustomModelPath:Ljava/lang/String;

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->checkFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    .line 803
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: isCustomVoiceTalkEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setCustomVoiceTalkFlag(Z)V

    .line 806
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_9

    .line 808
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-eqz v0, :cond_9

    .line 810
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPrecog:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    .line 811
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->UDTAlwaysAPsearch:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    .line 815
    :cond_9
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_e

    .line 817
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_a

    .line 819
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_d

    .line 821
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 822
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 882
    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->StartVerify()I

    move-result v11

    move v0, v11

    .line 884
    goto/16 :goto_0

    .line 796
    :cond_b
    iput-boolean v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    .line 797
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->weHaveNoModel:Z

    invoke-virtual {v0, v1}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setWeHaveNoModel(Z)V

    goto :goto_2

    .line 800
    :cond_c
    sget-object v0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->customVoiceTalkEnablePath:Ljava/lang/String;

    goto :goto_3

    .line 826
    :cond_d
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    goto :goto_4

    .line 840
    :cond_e
    iget v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->WType:I

    if-ne v0, v6, :cond_a

    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isCustomVoiceTalkEnable:Z

    if-nez v0, :cond_a

    .line 842
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryInitialize:Z

    if-nez v0, :cond_f

    .line 844
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-eqz v0, :cond_10

    .line 846
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryWakeUpEngine:Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sensoryinc/fluentsoftsdk/SensoryWakeUpEngine;->phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    .line 847
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mDummyRecorder:Lcom/samsung/voiceshell/AudioRecordHaydn;

    iget-wide v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->consoleInitReturn:J

    invoke-virtual {v0, v1, v2}, Lcom/samsung/voiceshell/AudioRecordHaydn;->setConsoleInitReturn(J)V

    .line 865
    :cond_f
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isNewVersionSensoryWakeUpLibExist:Z

    if-nez v0, :cond_a

    .line 871
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    invoke-virtual {v0}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->MakeReady()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 873
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 851
    :cond_10
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mSensoryJNI:Lcom/vlingo/client/phrasespotter/SensoryJNI;

    iget-object v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->acousticModelPathname:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->searchGrammarPathname:Ljava/lang/String;

    sget v3, Lcom/vlingo/client/phrasespotter/SensoryJNI;->GRAMMAR_FORMALITY_DEFAULT:I

    iget v4, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->beam:F

    iget v5, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->absBeam:F

    iget v6, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->aoffset:F

    iget v7, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->delay:F

    iget-object v8, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->debugSessionPathname:Ljava/lang/String;

    iget v9, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->doLoggingParam:I

    invoke-virtual/range {v0 .. v9}, Lcom/vlingo/client/phrasespotter/SensoryJNI;->Initialize(Ljava/lang/String;Ljava/lang/String;IFFFFLjava/lang/String;I)Z

    goto :goto_5

    .line 877
    :cond_11
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v1, "SensoryEngine Not Ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public stopEnroll()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 682
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "secMM: stopEnroll"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v0

    .line 689
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_0

    .line 694
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-eqz v0, :cond_2

    .line 696
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->sensoryUDTSIDThreadEnable:Z

    .line 697
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v2, "Set sensoryUDTSIDThreadEnable false"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isRunning_enroll:Z

    .line 701
    invoke-virtual {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateEnroll()I

    move v0, v1

    .line 702
    goto :goto_0
.end method

.method public stopVerify()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 889
    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "stopVerify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSamsungWakeUpLibExist:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryUDTSIDExist:Z

    if-nez v2, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isSensoryWakeUpLibExist:Z

    if-eqz v2, :cond_0

    .line 901
    invoke-direct {p0}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->TerminateVerify()I

    .line 903
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 905
    iget-boolean v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 908
    iput-boolean v1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->isAudioFocus:Z

    :cond_2
    move v0, v1

    .line 912
    goto :goto_0
.end method
