.class public Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
.super Ljava/lang/Object;
.source "TranDiskInfo.java"


# static fields
.field public static final FLAG_ADOPTABLE:I = 0x1

.field public static final FLAG_DEFAULT_PRIMARY:I = 0x2

.field public static final FLAG_SD:I = 0x4

.field public static final FLAG_STUB_VISIBLE:I = 0x40

.field public static final FLAG_USB:I = 0x8


# instance fields
.field public final flags:I

.field public final id:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public size:J

.field public sysPath:Ljava/lang/String;

.field public volumeCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->id:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->flags:I

    .line 29
    return-void
.end method


# virtual methods
.method public isSd()Z
    .locals 1

    .line 33
    iget v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsb()Z
    .locals 1

    .line 37
    iget v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
