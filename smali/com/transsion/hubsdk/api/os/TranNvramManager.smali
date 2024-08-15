.class public Lcom/transsion/hubsdk/api/os/TranNvramManager;
.super Ljava/lang/Object;
.source "TranNvramManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/transsion/hubsdk/api/os/TranNvramManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "33111"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    .line 34
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->TAG:Ljava/lang/String;

    const-string v1, "TranThubNvramManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->TAG:Ljava/lang/String;

    const-string v1, "TranAospNvramManager"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public getService()Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    return-object v0
.end method

.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i3"    # I

    .line 52
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    invoke-interface {v0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;->readFileByName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i3"    # I
    .param p3, "arrayList"    # Ljava/util/List;

    .line 67
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranNvramManager;->mService:Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;->writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B

    move-result v0

    return v0
.end method
