.class public Lcom/mediatek/ims/ImsWriteUtil;
.super Ljava/lang/Object;
.source "ImsWriteUtil.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ImsWriteUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callDiscount()V
    .locals 1

    .line 105
    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/trancare/trancareassist/TranTrancareAssistManager;->getService()Lcom/transsion/hubsdk/trancare/trancareassist/ITranTrancareAssistManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/hubsdk/trancare/trancareassist/ITranTrancareAssistManager;->callDiscount()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static isSupportFansFeature()Z
    .locals 2

    .line 142
    const-string v0, "persist.sys.fans.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static saveDisconnnectCause(IILandroid/content/Context;)V
    .locals 10
    .param p0, "cause"    # I
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "voiceNetworkTypeName":Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 115
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 116
    .local v2, "actualVoiceNetworkType":I
    if-eqz v2, :cond_0

    .line 117
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 121
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    .line 122
    .local v4, "signalStrength":Landroid/telephony/SignalStrength;
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 124
    .local v5, "state":I
    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v6

    .line 125
    .local v6, "signalDbm":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signalDbm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ImsWriteUtil"

    invoke-static {v8, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v7, 0x1

    if-eq v7, v5, :cond_1

    const/4 v7, 0x3

    if-ne v7, v5, :cond_2

    .line 128
    :cond_1
    const/4 v6, 0x0

    .line 130
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v7, "localLog":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Call_Disconnnect_cause:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Dbm:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Plmn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  NetworkTypeName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TSD_CONNECTIVITY"

    invoke-static {v9, v8}, Lcom/transsion/hubsdk/api/trancare/TranTrancareNative;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v5    # "state":I
    .end local v6    # "signalDbm":I
    .end local v7    # "localLog":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method

.method public static updateCauseInfo(IILandroid/content/Context;Z)V
    .locals 4
    .param p0, "cause"    # I
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isOnIms"    # Z

    .line 38
    const-string v0, "ImsWriteUtil"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCauseInfo phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 40
    .local v1, "subIds":[I
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    .line 44
    .local v2, "subId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-gez v2, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {p0, v2, p2, p3}, Lcom/mediatek/ims/ImsWriteUtil;->updateDisconnectCause(IILandroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v1    # "subIds":[I
    .end local v2    # "subId":I
    goto :goto_2

    .line 46
    .restart local v1    # "subIds":[I
    .restart local v2    # "subId":I
    :cond_2
    :goto_0
    return-void

    .line 41
    .end local v2    # "subId":I
    :cond_3
    :goto_1
    return-void

    .line 49
    .end local v1    # "subIds":[I
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCauseInfo exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public static updateDisconnectCause(IILandroid/content/Context;Z)V
    .locals 2
    .param p0, "cause"    # I
    .param p1, "subId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isOnIms"    # Z

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/ims/ImsWriteUtil$1;

    invoke-direct {v1, p3, p0, p2, p1}, Lcom/mediatek/ims/ImsWriteUtil$1;-><init>(ZILandroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 101
    return-void
.end method
