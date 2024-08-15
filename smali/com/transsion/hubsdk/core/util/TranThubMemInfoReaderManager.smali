.class public Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;
.super Ljava/lang/Object;
.source "TranThubMemInfoReaderManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/hubsdk/util/TranMemInfoReader;

    invoke-direct {v0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    .line 21
    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 4

    .line 38
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;->getCachedSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 43
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 4

    .line 26
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;->getFreeSize()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 31
    :cond_0
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreeSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 4

    .line 50
    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->mMemInfoReader:Lcom/transsion/hubsdk/util/TranMemInfoReader;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/transsion/hubsdk/util/TranMemInfoReader;->readMemInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/transsion/hubsdk/core/util/TranThubMemInfoReaderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readMemInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
