.class public Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;
.super Ljava/lang/Object;
.source "TranNetworkPolicyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/transsion/hubsdk/interfaces/net/ITranNetworkPolicyManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/net/TranThubNetworkPolicyManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranNetworkPolicyManagerAdapter;

    .line 28
    sget-object v0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubNetworkPolicyManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/net/TranAospNetworkPolicyManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/net/TranAospNetworkPolicyManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranNetworkPolicyManagerAdapter;

    .line 31
    sget-object v0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospNetworkPolicyManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void
.end method


# virtual methods
.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .line 44
    iget-object v0, p0, Lcom/transsion/hubsdk/api/net/TranNetworkPolicyManager;->mService:Lcom/transsion/hubsdk/interfaces/net/ITranNetworkPolicyManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/net/ITranNetworkPolicyManagerAdapter;->setRestrictBackground(Z)V

    .line 45
    return-void
.end method
