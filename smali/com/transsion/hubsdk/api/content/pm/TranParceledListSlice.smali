.class public Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
.super Ljava/lang/Object;
.source "TranParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;, "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;->mList:Ljava/util/List;

    .line 21
    return-void
.end method

.method public static emptyList()Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 24
    .local p0, "this":Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;, "Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice<TT;>;"
    iget-object v0, p0, Lcom/transsion/hubsdk/api/content/pm/TranParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method
