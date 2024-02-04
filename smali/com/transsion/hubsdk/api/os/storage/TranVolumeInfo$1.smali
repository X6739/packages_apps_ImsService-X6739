.class Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo$1;
.super Ljava/lang/Object;
.source "TranVolumeInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;
    .param p2, "rhs"    # Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    .line 34
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 35
    return v1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x1

    return v0

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 39
    return v1

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    check-cast p2, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo$1;->compare(Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;Lcom/transsion/hubsdk/api/os/storage/TranVolumeInfo;)I

    move-result p1

    return p1
.end method
