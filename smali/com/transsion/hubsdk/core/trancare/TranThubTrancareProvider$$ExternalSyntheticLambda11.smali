.class public final synthetic Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentResolver;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$0:Landroid/content/ContentResolver;

    iput-wide p2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$1:J

    iput-object p4, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$3:[Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$5:[Ljava/lang/String;

    iput-object p8, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$0:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$1:J

    iget-object v3, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$3:[Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$5:[Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda11;->f$6:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;->lambda$query$6(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
