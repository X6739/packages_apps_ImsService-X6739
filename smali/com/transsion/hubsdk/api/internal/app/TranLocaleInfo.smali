.class public Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;
.super Ljava/lang/Object;
.source "TranLocaleInfo.java"


# instance fields
.field mLabel:Ljava/lang/String;

.field mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLocale:Ljava/util/Locale;

    .line 20
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method
