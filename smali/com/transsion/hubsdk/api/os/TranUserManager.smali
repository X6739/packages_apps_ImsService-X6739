.class public Lcom/transsion/hubsdk/api/os/TranUserManager;
.super Ljava/lang/Object;
.source "TranUserManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/transsion/hubsdk/api/os/TranUserManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubUserManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/TranThubUserManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    .line 29
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubUserManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospUserManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    .line 32
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospUserManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_0
    return-void
.end method


# virtual methods
.method public getCredentialOwnerProfile(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 47
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getCredentialOwnerProfile(I)I

    move-result v0

    return v0
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 1
    .param p1, "userId"    # I

    .line 62
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;
    .locals 1

    .line 71
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranUserManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranUserManagerAdapter;

    return-object v0
.end method
