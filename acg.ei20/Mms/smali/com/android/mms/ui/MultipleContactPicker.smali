.class public Lcom/android/mms/ui/MultipleContactPicker;
.super Landroid/app/Activity;
.source "MultipleContactPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;
    }
.end annotation


# static fields
.field static final LOG_PROJECTION:[Ljava/lang/String;

.field public static mCheckStates:Landroid/util/SparseBooleanArray;

.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private static sentMessageUri:Landroid/net/Uri;


# instance fields
.field public addedCount:I

.field private mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

.field private mContactsListView:Landroid/widget/ListView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field public maxPickableCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MultipleContactPicker;->sentMessageUri:Landroid/net/Uri;

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MultipleContactPicker;->LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->maxPickableCount:I

    .line 52
    iput v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->addedCount:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MultipleContactPicker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MultipleContactPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/mms/ui/MultipleContactPicker;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private addAction()V
    .locals 6

    .prologue
    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->getCount()I

    move-result v0

    .line 249
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, position:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->isChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 254
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "contact_number"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/MultipleContactPicker;->setResult(ILandroid/content/Intent;)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker;->finish()V

    .line 257
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 4
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 155
    if-eqz p1, :cond_1

    .line 156
    const-string v2, "checked_item_array"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 157
    .local v0, checked_item:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 158
    aget v2, v0, v1

    if-ne v3, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->setChecked(IZ)V

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v0           #checked_item:[I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public static isUnknownCall(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 166
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryRecentContacts()V
    .locals 14

    .prologue
    .line 178
    const-string v0, "Mms/Recent"

    const-string v1, "3. Recent : Start of queryRecentContacts()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0x1e

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v8, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/data/Contact;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v13, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/MultipleContactPicker;->sentMessageUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/MultipleContactPicker;->LOG_PROJECTION:[Ljava/lang/String;

    const-string v4, "logtype=100 OR logtype=200 OR logtype=300 OR logtype=500"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 187
    .local v9, contactsCursor:Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 188
    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    if-eqz v9, :cond_1

    .line 234
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    const v1, 0x7f030021

    invoke-direct {v0, p0, p0, v1, v13}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;-><init>(Lcom/android/mms/ui/MultipleContactPicker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContactsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 243
    const-string v0, "Mms/Recent"

    const-string v1, "4. Recent : End of queryRecentContacts()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 206
    .local v7, contactAddr:Ljava/lang/String;
    .local v10, i$:Ljava/util/Iterator;
    .local v11, isAdded:I
    :cond_2
    if-nez v11, :cond_3

    .line 207
    :try_start_1
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v7           #contactAddr:Ljava/lang/String;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #isAdded:I
    :cond_3
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 195
    const/4 v7, 0x0

    .line 196
    .restart local v7       #contactAddr:Ljava/lang/String;
    const-string v0, "number"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7}, Lcom/android/mms/ui/MultipleContactPicker;->isUnknownCall(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 201
    const/4 v11, 0x0

    .line 202
    .restart local v11       #isAdded:I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 203
    .local v12, number:Ljava/lang/String;
    invoke-static {v12, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 210
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #isAdded:I
    .end local v12           #number:Ljava/lang/String;
    :cond_5
    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    .end local v7           #contactAddr:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_6

    .line 234
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Mms/Recent"

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "Mms/Recent"

    const-string v0, "2. Recent : onCreate()"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactPicker;->requestWindowFeature(I)Z

    .line 75
    const v0, 0x7f090149

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactPicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactPicker;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactPicker;->setContentView(I)V

    .line 79
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->maxPickableCount:I

    .line 80
    invoke-static {}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->addedCount:I

    .line 82
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContactsListView:Landroid/widget/ListView;

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContactsListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContentResolver:Landroid/content/ContentResolver;

    .line 86
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleContactPicker;->queryRecentContacts()V

    .line 87
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MultipleContactPicker;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 89
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultipleContactPicker;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object p0, Lcom/android/mms/ui/MultipleContactPicker;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 90
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 91
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 94
    :goto_0
    const-string v0, "Mms/Recent"

    const-string v0, "5. Recent : onCreate() is completed"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 261
    .local v3, pickedCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContactsListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 262
    const/4 v4, 0x1

    sget-object v5, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v4, 0x1

    sget-object v5, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MultipleContactPicker;->maxPickableCount:I

    iget v5, p0, Lcom/android/mms/ui/MultipleContactPicker;->addedCount:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_3

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v4, p3}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->toggle(I)V

    .line 280
    :goto_1
    sget-object v4, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    .line 281
    sget-object v4, Lcom/android/mms/ui/MultipleContactPicker;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 284
    :goto_2
    return-void

    .line 269
    :cond_3
    move-object v0, p0

    .line 270
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v2, maxCountAlertdialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090151

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/mms/ui/MultipleContactPicker;->maxPickableCount:I

    iget v9, p0, Lcom/android/mms/ui/MultipleContactPicker;->addedCount:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 272
    const v4, 0x7f090146

    new-instance v5, Lcom/android/mms/ui/MultipleContactPicker$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultipleContactPicker$1;-><init>(Lcom/android/mms/ui/MultipleContactPicker;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 277
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 283
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #maxCountAlertdialog:Landroid/app/AlertDialog$Builder;
    :cond_4
    sget-object v4, Lcom/android/mms/ui/MultipleContactPicker;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleContactPicker;->addAction()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 111
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->getCount()I

    move-result v1

    .line 139
    .local v1, count:I
    new-array v0, v1, [I

    .line 140
    .local v0, checked_item:[I
    const/4 v2, 0x0

    .local v2, position:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/mms/ui/MultipleContactPicker;->mContacstPicker:Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MultipleContactPicker$ContactsPickerAdapter;->isChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    const/4 v3, 0x1

    aput v3, v0, v2

    .line 140
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const/4 v3, 0x0

    aput v3, v0, v2

    goto :goto_1

    .line 151
    :cond_1
    const-string v3, "checked_item_array"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 152
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/MultipleContactPicker;->addAction()V

    .line 101
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 104
    sget-object v0, Lcom/android/mms/ui/MultipleContactPicker;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/MultipleContactPicker;->finish()V

    .line 106
    return-void
.end method
