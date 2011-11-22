.class Lcom/android/browser/HistoryItem$1;
.super Ljava/lang/Object;
.source "HistoryItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/HistoryItem;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/HistoryItem;


# direct methods
.method constructor <init>(Lcom/android/browser/HistoryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 53
    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v0}, Lcom/android/browser/HistoryItem;->access$000(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$100(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v2, v2, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 58
    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v0, v0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    const-string v1, "history"

    invoke-static {v0, v1}, Lcom/android/browser/LogTag;->logBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 61
    :cond_0
#    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;
#
#    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;
#
#    move-result-object v0
#
#    const-string v1, "VZW Home"
#
#    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v0
#
#    if-eqz v0, :cond_1
#
#    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;
#
#    iget-object v0, v0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;
#
#    const-string v1, "http://converge.vzwwap.com/"
#
#    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v0
#
#    if-nez v0, :cond_3
#
#    :cond_1
#    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;
#
#    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;
#
#    move-result-object v0
#
#    const-string v1, "My Verizon"
#
#    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v0
#
#    if-eqz v0, :cond_2
#
#    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;
#
#    iget-object v0, v0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;
#
#    const-string v1, "https://mobile.vzw.com/sspostmw/forms/myacc.jsp"
#
#    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v0
#
#    if-nez v0, :cond_3
#
#    :cond_2
#    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;
#
#    invoke-virtual {v0}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;
#
#    move-result-object v0
#
#    const-string v1, "Your Guide Mobile"
#
#    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v0
#
#    if-eqz v0, :cond_5
#
#    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;
#
#    iget-object v0, v0, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;
#
#    const-string v1, "http://yourguide.vzw.com/"
#
#    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#    move-result v0
#
#    if-eqz v0, :cond_5

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v0}, Lcom/android/browser/HistoryItem;->access$200(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$300(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    iget-object v3, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v0}, Lcom/android/browser/HistoryItem;->access$400(Lcom/android/browser/HistoryItem;)Landroid/widget/CompoundButton;

    move-result-object v0

    if-nez p2, :cond_4

    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v0}, Lcom/android/browser/HistoryItem;->access$500(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-static {v1}, Lcom/android/browser/HistoryItem;->access$600(Lcom/android/browser/HistoryItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    iget-object v2, v2, Lcom/android/browser/BookmarkItem;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/HistoryItem$1;->this$0:Lcom/android/browser/HistoryItem;

    invoke-virtual {v3}, Lcom/android/browser/HistoryItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/Bookmarks;->removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
