.class Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$1;
.super Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.source "TranResMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
        "Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;
    .locals 2

    .line 285
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubResMonitorManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/resmonitor/TranThubResMonitorManager;-><init>()V

    return-object v0

    .line 289
    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranAospResMonitorManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/resmonitor/TranAospResMonitorManager;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/resmonitor/TranResMonitorManager$1;->create()Lcom/transsion/hubsdk/interfaces/resmonitor/ITranResMonitorManagerAdapter;

    move-result-object v0

    return-object v0
.end method
