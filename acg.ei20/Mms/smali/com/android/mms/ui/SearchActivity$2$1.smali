.class Lcom/android/mms/ui/SearchActivity$2$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$2;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$2;

.field final synthetic val$addressPos:I

.field final synthetic val$bodyPos:I

.field final synthetic val$rowidPos:I

.field final synthetic val$threadIdPos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$2;Landroid/content/Context;Landroid/database/Cursor;ZIIII)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iput p5, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$addressPos:I

    iput p6, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$bodyPos:I

    iput p7, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$threadIdPos:I

    iput p8, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$rowidPos:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v13, 0x0

    .line 298
    const v2, 0x7f08004c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object v11, v0

    .line 299
    .local v11, title:Landroid/widget/TextView;
    const v2, 0x7f080090

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v0, v2

    check-cast v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v10, v0

    .line 301
    .local v10, snippet:Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    iget v2, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$addressPos:I

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, address:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {v8, v13}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    move-object v9, v2

    .line 304
    .local v9, contact:Lcom/android/mms/data/Contact;
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .line 305
    .local v12, titleString:Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget v2, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$bodyPos:I

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2$1;->this$1:Lcom/android/mms/ui/SearchActivity$2;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v10, v2, v3}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget v2, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$threadIdPos:I

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 314
    .local v4, threadId:J
    iget v2, p0, Lcom/android/mms/ui/SearchActivity$2$1;->val$rowidPos:I

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 316
    .local v6, rowid:J
    new-instance v2, Lcom/android/mms/ui/SearchActivity$2$1$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/SearchActivity$2$1$1;-><init>(Lcom/android/mms/ui/SearchActivity$2$1;JJ)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {p1, v13}, Landroid/view/View;->setClickable(Z)V

    .line 327
    return-void

    .line 302
    .end local v4           #threadId:J
    .end local v6           #rowid:J
    .end local v9           #contact:Lcom/android/mms/data/Contact;
    .end local v12           #titleString:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object v9, v2

    goto :goto_0

    .line 304
    .restart local v9       #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v2, ""

    move-object v12, v2

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 331
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 332
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030029

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 333
    .local v1, v:Landroid/view/View;
    return-object v1
.end method
