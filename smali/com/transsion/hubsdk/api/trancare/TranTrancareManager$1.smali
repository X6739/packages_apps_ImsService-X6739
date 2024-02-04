.class Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$1;
.super Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.source "TranTrancareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<",
        "Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 677
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;
    .locals 2

    .line 680
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubTrancareManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareManager;-><init>()V

    return-object v0

    .line 684
    :cond_0
    invoke-static {}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranAospTrancareManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v0, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/trancare/TranAospTrancareManager;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/trancare/TranTrancareManager$1;->create()Lcom/transsion/hubsdk/interfaces/trancare/ITranTrancareManagerAdapter;

    move-result-object v0

    return-object v0
.end method
