.class Lcom/android/browser/BrowserBookmarksPage$2$1;
.super Ljava/lang/Object;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserBookmarksPage$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserBookmarksPage$2;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserBookmarksPage$2;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    iget-object v0, v0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    iget-object v0, v0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->access$400(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    iget-object v1, v1, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    iget-object v0, v0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    iget-object v0, v0, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v0}, Lcom/android/browser/BrowserBookmarksPage;->access$500(Lcom/android/browser/BrowserBookmarksPage;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage$2$1;->this$1:Lcom/android/browser/BrowserBookmarksPage$2;

    iget-object v1, v1, Lcom/android/browser/BrowserBookmarksPage$2;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-static {v1}, Lcom/android/browser/BrowserBookmarksPage;->access$200(Lcom/android/browser/BrowserBookmarksPage;)Lcom/android/browser/BrowserBookmarksAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 581
    :cond_1
    return-void
.end method