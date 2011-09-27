.class Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;
.super Ljava/lang/Object;
.source "MpThumnailOneEditTitleScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 499
    .local v0, vk:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 501
    iget-object v1, p0, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;

    iget-object v1, v1, Lcom/android/music/list/layout/MpThumnailOneEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 502
    return-void
.end method
