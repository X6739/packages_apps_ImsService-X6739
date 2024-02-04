.class public final synthetic Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/hubsdk/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentResolver;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;JLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$0:Landroid/content/ContentResolver;

    iput-wide p2, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$1:J

    iput-object p4, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-wide p5, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$0:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$1:J

    iget-object v3, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-wide v4, p0, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider$$ExternalSyntheticLambda1;->f$3:J

    invoke-static/range {v0 .. v5}, Lcom/transsion/hubsdk/core/trancare/TranThubTrancareProvider;->lambda$initDataSheet$0(Landroid/content/ContentResolver;JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
