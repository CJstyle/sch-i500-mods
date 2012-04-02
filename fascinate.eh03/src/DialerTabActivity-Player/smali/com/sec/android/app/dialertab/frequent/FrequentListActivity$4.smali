.class Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1203
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v2, -0x64

    const/4 v7, 0x0

    .line 1205
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v0

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1500(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1100(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v0

    .line 1210
    if-eqz v0, :cond_3

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1213
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    const-class v1, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "number"

    aput-object v3, v2, v4

    const-string v3, "number=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_0

    .line 1221
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1222
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1223
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1224
    const-string v3, "id"

    invoke-virtual {v6, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1225
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1227
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/MergeCursor;->getInt(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$1400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Landroid/database/MergeCursor;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1234
    const-string v1, "-15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.contacts/contacts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1238
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
