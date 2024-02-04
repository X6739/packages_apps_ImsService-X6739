.class Lcom/transsion/hubsdk/common/track/TranAthena$1;
.super Landroid/database/ContentObserver;
.source "TranAthena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/common/track/TranAthena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/common/track/TranAthena;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/common/track/TranAthena;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/transsion/hubsdk/common/track/TranAthena;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/transsion/hubsdk/common/track/TranAthena$1;->this$0:Lcom/transsion/hubsdk/common/track/TranAthena;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 47
    iget-object v0, p0, Lcom/transsion/hubsdk/common/track/TranAthena$1;->this$0:Lcom/transsion/hubsdk/common/track/TranAthena;

    invoke-static {v0}, Lcom/transsion/hubsdk/common/track/TranAthena;->access$100(Lcom/transsion/hubsdk/common/track/TranAthena;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_experience"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v0, v3}, Lcom/transsion/hubsdk/common/track/TranAthena;->access$002(Lcom/transsion/hubsdk/common/track/TranAthena;Z)Z

    .line 48
    invoke-static {}, Lcom/transsion/hubsdk/common/track/TranAthena;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user_experience: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/hubsdk/common/track/TranAthena$1;->this$0:Lcom/transsion/hubsdk/common/track/TranAthena;

    invoke-static {v2}, Lcom/transsion/hubsdk/common/track/TranAthena;->access$000(Lcom/transsion/hubsdk/common/track/TranAthena;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method
