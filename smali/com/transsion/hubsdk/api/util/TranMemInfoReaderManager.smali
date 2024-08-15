.class public Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;
.super Ljava/lang/Object;
.source "TranMemInfoReaderManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mService:Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    .line 20
    sget-object v0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubMemInfoReaderManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mService:Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    .line 23
    sget-object v0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospMemInfoReaderManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mService:Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;->getCachedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mService:Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;->getFreeSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranMemInfoReaderManager;->mService:Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;

    invoke-interface {v0}, Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;->readMemInfo()V

    .line 49
    return-void
.end method
