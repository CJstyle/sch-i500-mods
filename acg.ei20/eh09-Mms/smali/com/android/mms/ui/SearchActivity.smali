.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# instance fields
.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field searchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    .line 209
    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 226
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const v3, 0x7f030028

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setContentView(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, searchStringParameter:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent_extra_data_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 240
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 242
    .local v1, listView:Landroid/widget/ListView;
    const v3, 0x1080062

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 243
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 244
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 245
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setClickable(Z)V

    .line 251
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v3}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 256
    new-instance v3, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V

    iput-object v3, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 358
    return-void

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_1
    move-object v3, v2

    .line 236
    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 362
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    .line 363
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 371
    sget-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 375
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 221
    return-void
.end method
