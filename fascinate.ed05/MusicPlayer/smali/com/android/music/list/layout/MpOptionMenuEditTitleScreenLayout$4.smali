.class Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;
.super Ljava/lang/Object;
.source "MpOptionMenuEditTitleScreenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
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
    .line 347
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 350
    .local v0, vk:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 352
    iget-object v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;->this$0:Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;

    invoke-static {v1}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 354
    return-void
.end method
