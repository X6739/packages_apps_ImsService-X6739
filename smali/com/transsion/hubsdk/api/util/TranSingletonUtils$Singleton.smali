.class public abstract Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;
.super Ljava/lang/Object;
.source "TranSingletonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/api/util/TranSingletonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    .local p0, "this":Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;, "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 1

    .line 25
    .local p0, "this":Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;, "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;, "Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton<TT;>;"
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    .line 16
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/hubsdk/api/util/TranSingletonUtils$Singleton;->mInstance:Ljava/lang/Object;

    return-object v0
.end method
