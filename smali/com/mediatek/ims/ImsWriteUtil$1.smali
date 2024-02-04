.class Lcom/mediatek/ims/ImsWriteUtil$1;
.super Ljava/lang/Object;
.source "ImsWriteUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/ImsWriteUtil;->updateDisconnectCause(IILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cause:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isOnIms:Z

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(ZILandroid/content/Context;I)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$isOnIms:Z

    iput p2, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$cause:I

    iput-object p3, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 59
    const-string v0, "ImsWriteUtil"

    :try_start_0
    const-string v1, "saveInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v1, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$isOnIms:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const-string v4, "  Call_Normal_Disconnnect"

    const-string v5, "TSD_CONNECTIVITY"

    if-eqz v1, :cond_6

    .line 61
    :try_start_1
    iget v1, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$cause:I

    if-eq v1, v3, :cond_5

    const/16 v3, 0x13

    if-eq v1, v3, :cond_5

    const/16 v3, 0x11

    if-eq v1, v3, :cond_5

    const/16 v3, 0x15

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    if-eq v1, v2, :cond_2

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    iget v2, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$subId:I

    iget-object v3, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsWriteUtil;->saveDisconnnectCause(IILandroid/content/Context;)V

    goto/16 :goto_4

    .line 67
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$subId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 68
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget v2, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$subId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 69
    .local v2, "serviceState":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_4

    .line 70
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 71
    .local v3, "state":I
    if-nez v3, :cond_3

    .line 72
    invoke-static {v5, v4}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/mediatek/ims/ImsWriteUtil;->callDiscount()V

    goto :goto_1

    .line 75
    :cond_3
    iget v4, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$cause:I

    iget v5, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$subId:I

    iget-object v6, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/mediatek/ims/ImsWriteUtil;->saveDisconnnectCause(IILandroid/content/Context;)V

    .line 78
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v2    # "serviceState":Landroid/telephony/ServiceState;
    .end local v3    # "state":I
    :cond_4
    :goto_1
    goto :goto_4

    .line 64
    :cond_5
    :goto_2
    invoke-static {v5, v4}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/mediatek/ims/ImsWriteUtil;->callDiscount()V

    goto :goto_4

    .line 82
    :cond_6
    iget v1, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$cause:I

    const/4 v6, 0x2

    if-eq v1, v6, :cond_8

    const/4 v6, 0x3

    if-eq v1, v6, :cond_8

    const/4 v6, 0x4

    if-eq v1, v6, :cond_8

    const/4 v6, 0x5

    if-eq v1, v6, :cond_8

    const/4 v6, 0x7

    if-eq v1, v6, :cond_8

    const/16 v6, 0x41

    if-eq v1, v6, :cond_8

    const/16 v6, 0x19

    if-eq v1, v6, :cond_8

    const/16 v6, 0x17

    if-eq v1, v6, :cond_8

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    goto :goto_3

    .line 91
    :cond_7
    iget v2, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$subId:I

    iget-object v3, p0, Lcom/mediatek/ims/ImsWriteUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/ImsWriteUtil;->saveDisconnnectCause(IILandroid/content/Context;)V

    goto :goto_4

    .line 88
    :cond_8
    :goto_3
    invoke-static {v5, v4}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/mediatek/ims/ImsWriteUtil;->callDiscount()V

    .line 94
    :goto_4
    const-string v1, "saveInfo complete"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    goto :goto_5

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveInfo exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method
