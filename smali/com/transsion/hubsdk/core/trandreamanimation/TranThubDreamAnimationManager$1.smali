.class Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;
.super Ljava/lang/Object;
.source "TranThubDreamAnimationManager.java"

# interfaces
.implements Lcom/transsion/hubsdk/trandreamanimation/TranDreamAnimationManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;->registerCallback(Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

.field final synthetic val$cb:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;)V
    .locals 0
    .param p1, "this$0"    # Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    .line 41
    iput-object p1, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;->this$0:Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;->val$cb:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamAnimationEvent(I)V
    .locals 1
    .param p1, "evenCode"    # I

    .line 44
    iget-object v0, p0, Lcom/transsion/hubsdk/core/trandreamanimation/TranThubDreamAnimationManager$1;->val$cb:Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;

    invoke-interface {v0, p1}, Lcom/transsion/hubsdk/api/trandreamanimation/TranDreamAnimationManager$CallBack;->onDreamAnimationEvent(I)V

    .line 45
    return-void
.end method
