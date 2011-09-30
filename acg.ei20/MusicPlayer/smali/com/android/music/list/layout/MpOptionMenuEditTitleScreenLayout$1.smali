.class Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;
.super Landroid/os/Handler;
.source "MpOptionMenuEditTitleScreenLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;


# direct methods
.method constructor <init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    .local v0, vk:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 101
    return-void
.end method
