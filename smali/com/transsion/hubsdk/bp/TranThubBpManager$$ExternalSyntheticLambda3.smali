.class public final synthetic Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/bp/TranThubBpManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/bp/TranThubBpManager;->lambda$recordException$1(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
