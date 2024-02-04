.class public final Lvendor/mediatek/hardware/mtkradioex/V3_0/CallInfoType;
.super Ljava/lang/Object;
.source "CallInfoType.java"


# static fields
.field public static final MT_CALL_DIAL_IMS_STK:I = 0x64

.field public static final MT_CALL_GWSD:I = 0xa

.field public static final MT_CALL_MISSED:I = 0x2

.field public static final MT_CALL_NONE:I = 0x0

.field public static final MT_CALL_NUMREDIRECT:I = 0x3

.field public static final MT_CALL_REJECTED:I = 0x1

.field public static final MT_CALL_RQ:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 40
    .local v1, "flipped":I
    const-string v2, "MT_CALL_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 42
    const-string v2, "MT_CALL_REJECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    or-int/lit8 v1, v1, 0x1

    .line 45
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 46
    const-string v2, "MT_CALL_MISSED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    or-int/lit8 v1, v1, 0x2

    .line 49
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 50
    const-string v2, "MT_CALL_NUMREDIRECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    or-int/lit8 v1, v1, 0x3

    .line 53
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 54
    const-string v2, "MT_CALL_RQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    or-int/lit8 v1, v1, 0x4

    .line 57
    :cond_3
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 58
    const-string v2, "MT_CALL_GWSD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0xa

    .line 61
    :cond_4
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5

    .line 62
    const-string v2, "MT_CALL_DIAL_IMS_STK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x64

    .line 65
    :cond_5
    if-eq p0, v1, :cond_6

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_6
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 13
    if-nez p0, :cond_0

    .line 14
    const-string v0, "MT_CALL_NONE"

    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 17
    const-string v0, "MT_CALL_REJECTED"

    return-object v0

    .line 19
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 20
    const-string v0, "MT_CALL_MISSED"

    return-object v0

    .line 22
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 23
    const-string v0, "MT_CALL_NUMREDIRECT"

    return-object v0

    .line 25
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 26
    const-string v0, "MT_CALL_RQ"

    return-object v0

    .line 28
    :cond_4
    const/16 v0, 0xa

    if-ne p0, v0, :cond_5

    .line 29
    const-string v0, "MT_CALL_GWSD"

    return-object v0

    .line 31
    :cond_5
    const/16 v0, 0x64

    if-ne p0, v0, :cond_6

    .line 32
    const-string v0, "MT_CALL_DIAL_IMS_STK"

    return-object v0

    .line 34
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
