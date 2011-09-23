.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;
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
    .line 1051
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

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
    .line 1052
    const/4 v7, 0x0

    .line 1053
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iput p3, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemIndex:I

    .line 1054
    if-nez p3, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1093
    .end local p1
    :goto_0
    return v0

    .line 1057
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 1058
    const/4 v0, 0x0

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1202(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Z)Z

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iput-object p1, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->viewData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    iget v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;->contact_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->mItemContactId:Ljava/lang/Integer;

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1200(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1069
    const v0, 0x7f0600b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tv:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 1070
    .restart local v7       #tv:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1071
    const v0, 0x7f0600b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tv:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 1072
    .restart local v7       #tv:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1074
    :cond_3
    const v0, 0x7f0600b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #tv:Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 1075
    .restart local v7       #tv:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$602(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1082
    .local v6, phoneNumberCur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1083
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_4

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1086
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$3;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const-string v1, "data1"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$702(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method
