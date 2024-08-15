.class public Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;
.super Ljava/lang/Object;
.source "TranThubDreamAnimationManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;",
            "Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mLock:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    .line 28
    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 1
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    .line 32
    invoke-static {}, Lcom/transsion/hubsdk/api/os/TranUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V

    .line 33
    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
    .locals 2
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    .param p2, "userId"    # I

    .line 37
    if-nez p1, :cond_0

    .line 38
    sget-object v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string v1, "CallBack is not available while register."

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;-><init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 47
    .local v0, "callBack":Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    invoke-virtual {v1, v0}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 49
    return-void
.end method

.method protected setService(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;)V
    .locals 0
    .param p1, "service"    # Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    .line 73
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    .line 74
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 1
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    .line 64
    invoke-static {}, Lcom/transsion/hubsdk/api/os/TranUserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V

    .line 65
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
    .locals 2
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    .param p2, "userId"    # I

    .line 54
    if-nez p1, :cond_0

    .line 55
    sget-object v0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->TAG:Ljava/lang/String;

    const-string v1, "CallBack is not available while unregister."

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mTranDreamAnimationManager:Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager;->unRegisterCallback(Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;)V

    .line 59
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
