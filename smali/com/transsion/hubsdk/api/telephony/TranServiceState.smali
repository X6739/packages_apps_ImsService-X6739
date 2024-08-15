.class public Lcom/transsion/hubsdk/api/telephony/TranServiceState;
.super Ljava/lang/Object;
.source "TranServiceState.java"


# instance fields
.field private mDataRoamingType:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "mState"    # I
    .param p2, "mOperatorNumeric"    # Ljava/lang/String;
    .param p3, "mDataRoamingType"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;->mState:I

    .line 22
    iput-object p2, p0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;->mOperatorNumeric:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;->mDataRoamingType:I

    .line 24
    return-void
.end method


# virtual methods
.method public getDataRoamingType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;->mDataRoamingType:I

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/transsion/hubsdk/api/telephony/TranServiceState;->mState:I

    return v0
.end method
