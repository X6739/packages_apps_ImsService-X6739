.class public Lcom/transsion/hubsdk/aosp/util/TranAospMemInfoReaderManager;
.super Ljava/lang/Object;
.source "TranAospMemInfoReaderManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranMemInfoReaderAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .line 20
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .line 15
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 0

    .line 26
    return-void
.end method
