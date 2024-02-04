.class public Lcom/transsion/hubsdk/TranHubSdkManager;
.super Ljava/lang/Object;
.source "TranHubSdkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/transsion/hubsdk/TranHubSdkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 40
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/hubsdk/TranHubSdkManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/transsion/hubsdk/TranHubSdkManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/TranHubSdkManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/TranHubSdkManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {v0}, Lcom/transsion/hubsdk/verifykey/TranVerifyKeyManager;->verify(Landroid/content/Context;)I

    .line 31
    const-string v0, "33101"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->setLogLevel(I)I

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->setLogLevel(I)I

    .line 36
    :goto_0
    sget-object v0, Lcom/transsion/hubsdk/TranHubSdkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/track/TranAthena;->getInstance(Landroid/content/Context;)Lcom/transsion/hubsdk/common/track/TranAthena;

    .line 37
    return-void
.end method
