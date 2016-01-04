.class Lcom/samsung/location/CellGeofenceProvider$1;
.super Lcom/samsung/location/ISLocationCellInterface$Stub;
.source "CellGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/location/CellGeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/location/CellGeofenceProvider;


# direct methods
.method constructor <init>(Lcom/samsung/location/CellGeofenceProvider;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    invoke-direct {p0}, Lcom/samsung/location/ISLocationCellInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCellGeofence(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_add_cell_geofence(I)V
    invoke-static {v0, p1}, Lcom/samsung/location/CellGeofenceProvider;->access$100(Lcom/samsung/location/CellGeofenceProvider;I)V

    .line 84
    return-void
.end method

.method public enableCellGeofence(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "geofenceState"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_enable_cell_geofence(II)V
    invoke-static {v0, p1, p2}, Lcom/samsung/location/CellGeofenceProvider;->access$200(Lcom/samsung/location/CellGeofenceProvider;II)V

    .line 87
    return-void
.end method

.method public initCellGeofence(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_init_cell_geofence(I)V
    invoke-static {v0, p1}, Lcom/samsung/location/CellGeofenceProvider;->access$000(Lcom/samsung/location/CellGeofenceProvider;I)V

    .line 81
    return-void
.end method

.method public removeCellGeofence(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_remove_cell_geofence(I)V
    invoke-static {v0, p1}, Lcom/samsung/location/CellGeofenceProvider;->access$300(Lcom/samsung/location/CellGeofenceProvider;I)V

    .line 90
    return-void
.end method

.method public startCollectCell(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_start_collect_cell(I)V
    invoke-static {v0, p1}, Lcom/samsung/location/CellGeofenceProvider;->access$400(Lcom/samsung/location/CellGeofenceProvider;I)V

    .line 93
    return-void
.end method

.method public stopCollectCell(I)V
    .locals 1
    .param p1, "geofenceId"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_stop_collect_cell(I)V
    invoke-static {v0, p1}, Lcom/samsung/location/CellGeofenceProvider;->access$500(Lcom/samsung/location/CellGeofenceProvider;I)V

    .line 96
    return-void
.end method

.method public syncCellGeofence([II[II)V
    .locals 1
    .param p1, "geofenceIdArray"    # [I
    .param p2, "geofenceIdArraySize"    # I
    .param p3, "enabledIdArray"    # [I
    .param p4, "enabledIdSize"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider$1;->this$0:Lcom/samsung/location/CellGeofenceProvider;

    # invokes: Lcom/samsung/location/CellGeofenceProvider;->native_sync_cell_geofence([II[II)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/location/CellGeofenceProvider;->access$600(Lcom/samsung/location/CellGeofenceProvider;[II[II)V

    .line 99
    return-void
.end method
