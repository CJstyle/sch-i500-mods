.class Lcom/android/internal/policy/impl/PuzzleLockScreen$3$1;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PuzzleLockScreen$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen$3;)V
    .locals 0
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$3$1;->this$1:Lcom/android/internal/policy/impl/PuzzleLockScreen$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$3$1;->this$1:Lcom/android/internal/policy/impl/PuzzleLockScreen$3;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 697
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 694
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 691
    return-void
.end method
