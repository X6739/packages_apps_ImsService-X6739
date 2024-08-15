.class public Lcom/transsion/hubsdk/aosp/trandreamanimation/TranAospDreamAnimationManager;
.super Ljava/lang/Object;
.source "TranAospDreamAnimationManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/trandreamanimation/ITranDreamAnimationManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 0
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    .line 19
    return-void
.end method

.method public registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
    .locals 0
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    .param p2, "userId"    # I

    .line 24
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 0
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    .line 34
    return-void
.end method

.method public unRegisterCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
    .locals 0
    .param p1, "cb"    # Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;
    .param p2, "userId"    # I

    .line 29
    return-void
.end method
