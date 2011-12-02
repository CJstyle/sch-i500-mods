.class Lcom/android/music/common/richinfo/RichInformationMainActivity$3;
.super Ljava/lang/Object;
.source "RichInformationMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationMainActivity;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$3;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$3;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-static {v0}, Lcom/android/music/common/richinfo/RichInformationMainActivity;->access$100(Lcom/android/music/common/richinfo/RichInformationMainActivity;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
