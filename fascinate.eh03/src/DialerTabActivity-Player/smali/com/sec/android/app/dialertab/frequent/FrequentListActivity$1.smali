.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "arg3"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iput-object p1, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iput p3, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemContactId:Ljava/lang/Integer;

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->iSepTag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 488
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$802(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;I)I

    .line 510
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemContactId:Ljava/lang/Integer;

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 492
    .local v6, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const-string v3, "contact_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 498
    .local v7, phoneNumberCur:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 499
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$802(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;I)I

    goto :goto_2

    .line 502
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3
.end method
