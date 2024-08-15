.class public Lcom/transsion/hubsdk/aosp/os/TranAospNvramManager;
.super Ljava/lang/Object;
.source "TranAospNvramManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranNvramServiceAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readFileByName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i3"    # I

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeFileByNamevec(Ljava/lang/String;ILjava/util/List;)B
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i3"    # I
    .param p3, "arrayList"    # Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    return v0
.end method
