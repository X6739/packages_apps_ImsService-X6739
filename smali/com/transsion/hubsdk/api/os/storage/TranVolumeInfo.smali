.class public Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
.super Ljava/lang/Object;
.source "TranVolumeInfo.java"


# static fields
.field public static final ID_PRIVATE_INTERNAL:Ljava/lang/String; = "private"

.field public static final STATE_MOUNTED:I = 0x2

.field public static final STATE_MOUNTED_READ_ONLY:I = 0x3

.field private static final sDescriptionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private disk:Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

.field private fsUuid:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field private state:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo$1;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "fsUuid"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->id:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->type:I

    .line 49
    iput-object p3, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->fsUuid:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->path:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static getDescriptionComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->sDescriptionComparator:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisk()Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->disk:Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    return-object v0
.end method

.method public getFsUuid()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->fsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/io/File;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->state:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->type:I

    return v0
.end method

.method public isMountedReadable()Z
    .locals 2

    .line 86
    iget v0, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->description:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDiskInfo(Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;)V
    .locals 0
    .param p1, "disk"    # Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    .line 79
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->disk:Lcom/transsion/hubsdk/api/os/storage/TranDiskInfo;

    .line 80
    return-void
.end method

.method public setFsUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->fsUuid:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 72
    iput p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->state:I

    .line 73
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 59
    iput p1, p0, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->type:I

    .line 60
    return-void
.end method
