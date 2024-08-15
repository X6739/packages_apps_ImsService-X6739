.class public Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;
.super Ljava/lang/Object;
.source "TranDreamAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    .line 46
    sget-object v0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string v1, "TranDreamAnimationManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    return-object v0
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 1
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    .line 58
    iget-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 59
    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
    .locals 1
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    .param p2, "userId"    # I

    .line 70
    iget-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V

    .line 71
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 1
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    .line 81
    iget-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 82
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
    .locals 1
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    .param p2, "userId"    # I

    .line 92
    iget-object v0, p0, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager;->mService:Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V

    .line 93
    return-void
.end method
