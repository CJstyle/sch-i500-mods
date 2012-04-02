.class public Lcom/android/music/list/adapter/MpListGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "MpListGroupAdapter.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;
.implements Lcom/android/music/list/interfaces/MpSetViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;,
        Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;,
        Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
    }
.end annotation


# instance fields
.field public MyTag:Ljava/lang/String;

.field private defaultimage:[Landroid/graphics/Bitmap;

.field protected final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCheckedCount:I

.field private mCheckedList:[Z

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCheck:Z

.field private mHeight:I

.field public mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mListView:Lcom/android/music/list/view/AbstractMpListView;

.field protected mResolver:Landroid/content/ContentResolver;

.field private mWidth:I

.field public tempimage:Lcom/android/music/list/data/MpImageDataBuffer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "hasCheck"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 93
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 94
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 96
    iput-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->MyTag:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mContext:Landroid/content/Context;

    .line 101
    iput-boolean p3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mHasCheck:Z

    .line 102
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    .line 103
    invoke-direct {p0, p2}, Lcom/android/music/list/adapter/MpListGroupAdapter;->initGroupItemList(Landroid/database/Cursor;)V

    .line 104
    iput-object p2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    .line 105
    iput v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 108
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    .line 110
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v4

    .line 111
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v3

    .line 112
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v5

    .line 113
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aput-object v2, v0, v6

    .line 114
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aput-object v2, v0, v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b5

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v4

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v3

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v5

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b7

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v5

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    if-nez v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b8

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v6

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 133
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_7

    .line 137
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mWidth:I

    .line 138
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mHeight:I

    .line 140
    :cond_7
    new-instance v0, Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->defaultimage:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListGroupAdapter;->GetHandler()Landroid/os/Handler;

    move-result-object v5

    iget v6, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mWidth:I

    iget v7, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mHeight:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/music/list/data/MpImageDataBuffer;-><init>(Landroid/content/Context;[Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/adapter/MpListGroupAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/adapter/MpListGroupAdapter;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/adapter/MpListGroupAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/music/list/adapter/MpListGroupAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/music/list/adapter/MpListGroupAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/music/list/adapter/MpListGroupAdapter;)Lcom/android/music/list/view/AbstractMpListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    return-object v0
.end method

.method private getTagItem(ILandroid/view/View;I)Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;
    .locals 4
    .parameter "itemType"
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 632
    new-instance v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;Lcom/android/music/list/adapter/MpListGroupAdapter$1;)V

    .line 633
    .local v1, tagItem:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;
    packed-switch p1, :pswitch_data_0

    .line 680
    .end local p0
    :goto_0
    return-object v1

    .line 635
    .restart local p0
    :pswitch_0
    const v2, 0x7f0c003f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    .line 637
    const v2, 0x7f0c003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    .line 639
    const v2, 0x7f0c003e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->playing:Landroid/widget/ImageView;

    .line 641
    const v2, 0x7f0c003b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/view/MpView;

    .line 644
    .local v0, imageView:Lcom/android/music/list/view/MpView;
    invoke-direct {p0, p3, v0, p2}, Lcom/android/music/list/adapter/MpListGroupAdapter;->setTagId(ILcom/android/music/list/view/MpView;Landroid/view/View;)V

    goto :goto_0

    .line 666
    .end local v0           #imageView:Lcom/android/music/list/view/MpView;
    :pswitch_1
    const v2, 0x7f0c004f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    goto :goto_0

    .line 671
    .restart local p0
    :pswitch_2
    const v2, 0x7f0c0039

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    .line 673
    iget-object v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 674
    const v2, 0x7f0c0038

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->image:Landroid/widget/ImageView;

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private initGroupItemList(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 371
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 419
    :goto_0
    return-void

    .line 376
    .restart local p0
    :cond_1
    new-instance v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    invoke-direct {v1, p0}, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V

    .line 377
    .local v1, gi:Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, -0x3e7

    if-ne v3, v4, :cond_2

    .line 378
    const/16 v3, 0x3e9

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    .line 379
    const v3, 0x7f030015

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mLayout:I

    .line 380
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 383
    :cond_2
    const/4 v0, -0x1

    .line 386
    .local v0, albumId:I
    :cond_3
    const-string v3, "album_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 387
    .local v2, tempId:I
    if-eq v0, v2, :cond_4

    .line 388
    new-instance v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    .end local v1           #gi:Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
    invoke-direct {v1, p0}, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V

    .line 389
    .restart local v1       #gi:Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
    const/16 v3, 0x3ea

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    .line 390
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIsSeparator:Z

    .line 391
    const-string v3, "album"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mText:Ljava/lang/String;

    .line 392
    const v3, 0x7f03000e

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mLayout:I

    .line 393
    iput v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->albumId:I

    .line 408
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    move v0, v2

    .line 411
    :cond_4
    new-instance v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    .end local v1           #gi:Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
    invoke-direct {v1, p0}, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V

    .line 412
    .restart local v1       #gi:Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;
    const/16 v3, 0x3eb

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    .line 413
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIsSeparator:Z

    .line 414
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mText:Ljava/lang/String;

    .line 415
    const v3, 0x7f03000f

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mLayout:I

    .line 416
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iput v3, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    .line 417
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_0
.end method

.method private setTagId(ILcom/android/music/list/view/MpView;Landroid/view/View;)V
    .locals 10
    .parameter "position"
    .parameter "imageView"
    .parameter "convertView"

    .prologue
    const/4 v9, 0x1

    const-string v8, "_"

    .line 594
    const-string v4, ""

    .line 595
    .local v4, subTag:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v9

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 597
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v5, v5, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v4, v5, v9

    .line 599
    :cond_0
    iget-object v6, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v5, v5, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    invoke-interface {v6, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 600
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 601
    .local v2, itemid:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "view_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, myViewTag:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, imageViewTag:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TagBack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, imageBackViewTag:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/android/music/list/view/MpView;->SetProgressBarStartPosition(I)V

    .line 606
    invoke-virtual {p3, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 607
    invoke-virtual {p2, v0}, Lcom/android/music/list/view/MpView;->setTag(Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p2, v1}, Lcom/android/music/list/view/MpView;->SetIdIndex(Ljava/lang/String;)V

    .line 610
    iget-boolean v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mHasCheck:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget v5, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    iget-object v6, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v9, :cond_1

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 616
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-wide v5, Lcom/android/music/list/view/AbstractMpListView;->position:J

    iget-object v7, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-wide v7, Lcom/android/music/list/view/AbstractMpListView;->max:J

    invoke-virtual {p2, v5, v6, v7, v8}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 620
    :cond_1
    return-void
.end method

.method private showImage(ILcom/android/music/list/adapter/MpListGroupAdapter$TagItem;)V
    .locals 9
    .parameter "position"
    .parameter "tag"

    .prologue
    const/4 v2, 0x1

    const-string v3, "_"

    .line 343
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, itemid:Ljava/lang/String;
    const-string v7, ""

    .line 347
    .local v7, subTag:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v7, v0, v2

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, imageViewTag:Ljava/lang/String;
    iget-object v0, p2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object v8, p2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->image:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    const-string v3, "content://media/external/audio/albumart/"

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->albumId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    return-void
.end method


# virtual methods
.method public GetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/android/music/list/adapter/MpListGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/adapter/MpListGroupAdapter$1;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V

    .line 157
    .local v0, handler:Landroid/os/Handler;
    return-object v0
.end method

.method protected SetImageViewRedraw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "dbid"
    .parameter "path"
    .parameter "index"
    .parameter "Tag"

    .prologue
    const-string v3, "Tag"

    .line 164
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->MyTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/music/list/interfaces/MpHandlerInterface;->GetView(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/music/list/view/AbstractMpListView;

    .line 166
    .local v7, listview:Lcom/android/music/list/view/AbstractMpListView;
    if-nez p3, :cond_1

    .line 167
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview index = null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    if-eqz v7, :cond_0

    .line 172
    invoke-virtual {v7, p4}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 173
    .local v6, imageView:Landroid/widget/ImageView;
    if-nez v6, :cond_2

    .line 174
    const-string v0, "Tag"

    const-string v0, "Mplist twoline bineview imageView = null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_2
    iget-object v8, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    monitor-enter v8

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/music/list/data/MpImageDataBuffer;->GetImage(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v6}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getChecked()[Z
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    return-object v0
.end method

.method public getCheckedBoxCount()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x3eb

    const/16 v5, 0x3ea

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 212
    const/4 v1, 0x1

    .line 218
    .local v1, needCreateViewItem:Z
    if-eqz p2, :cond_0

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    .line 222
    .local v3, tagType:I
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    if-ne v3, v4, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 227
    .end local v3           #tagType:I
    :cond_0
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 229
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 230
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mLayout:I

    invoke-virtual {v0, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 232
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    invoke-direct {p0, v4, p2, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getTagItem(ILandroid/view/View;I)Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;

    move-result-object v2

    .line 234
    .local v2, tag:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    if-ne v4, v5, :cond_2

    .line 235
    invoke-direct {p0, p1, v2}, Lcom/android/music/list/adapter/MpListGroupAdapter;->showImage(ILcom/android/music/list/adapter/MpListGroupAdapter$TagItem;)V

    .line 237
    iget-object v5, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-object v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mText:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    invoke-virtual {p2, v4}, Landroid/view/View;->setId(I)V

    .line 339
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_1
    return-object p2

    .line 240
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    .restart local p0
    :cond_2
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    if-ne v4, v8, :cond_3

    .line 242
    iget-object v5, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-object v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mText:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-boolean v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mHasCheck:Z

    if-eqz v4, :cond_1

    .line 244
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 251
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->playing:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 255
    iget-object v5, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v5, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/music/list/adapter/MpListGroupAdapter$2;

    invoke-direct {v5, p0, v2}, Lcom/android/music/list/adapter/MpListGroupAdapter$2;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 296
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #tag:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;
    :cond_4
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    invoke-direct {p0, v4, p2, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getTagItem(ILandroid/view/View;I)Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;

    move-result-object v2

    .line 298
    .restart local v2       #tag:Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    if-ne v4, v5, :cond_5

    .line 300
    invoke-direct {p0, p1, v2}, Lcom/android/music/list/adapter/MpListGroupAdapter;->showImage(ILcom/android/music/list/adapter/MpListGroupAdapter$TagItem;)V

    .line 301
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 303
    .restart local p0
    :cond_5
    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->type:I

    if-ne v4, v8, :cond_7

    .line 305
    iget-boolean v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mHasCheck:Z

    if-eqz v4, :cond_6

    .line 306
    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 324
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->playing:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 328
    :cond_6
    iget-object v5, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-object v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mText:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v5, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v4, v4, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 330
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter$CheckBoxChangedListener;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 335
    :cond_7
    iget-object v4, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$TagItem;->check:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v5, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIsSeparator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    array-length v0, v0

    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    .line 709
    iget-object v0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    invoke-virtual {p0, v0}, Lcom/android/music/list/adapter/MpListGroupAdapter;->resumeCheckBox([Z)V

    .line 711
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 712
    return-void
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 578
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 579
    .local v0, count:I
    if-nez v0, :cond_0

    .line 580
    iget-object p0, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 591
    :goto_0
    return-void

    .line 583
    .restart local p0
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    .line 584
    invoke-direct {p0, p1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->initGroupItemList(Landroid/database/Cursor;)V

    .line 585
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_1
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCursor:Landroid/database/Cursor;

    .line 589
    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListGroupAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resumeCheckBox([Z)V
    .locals 3
    .parameter "check"

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    .line 695
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    .line 696
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-object v2, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v2, v2, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    aget-boolean v2, p1, v2

    iput-boolean v2, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    .line 699
    iget-object v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v1, v1, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    aget-boolean v1, p1, v1

    if-eqz v1, :cond_0

    .line 700
    iget v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    .line 696
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 704
    :cond_1
    return-void
.end method

.method public setCheckAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 540
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v3, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    if-nez v3, :cond_0

    move v0, v5

    .line 541
    .local v0, bool:Z
    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 542
    .local v2, msg:Landroid/os/Message;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 543
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iput-boolean v0, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #bool:Z
    .end local v1           #i:I
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    move v0, v4

    .line 540
    goto :goto_0

    .line 545
    .restart local v0       #bool:Z
    .restart local v1       #i:I
    .restart local v2       #msg:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 546
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    array-length v3, v3

    sub-int/2addr v3, v5

    :goto_2
    iput v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    .line 549
    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    if-nez v3, :cond_3

    .line 550
    iput v4, v2, Landroid/os/Message;->what:I

    .line 556
    :goto_3
    invoke-virtual {p0}, Lcom/android/music/list/adapter/MpListGroupAdapter;->notifyDataSetChanged()V

    .line 559
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v3, v2}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    return-void

    :cond_2
    move v3, v4

    .line 546
    goto :goto_2

    .line 552
    :cond_3
    iput v5, v2, Landroid/os/Message;->what:I

    goto :goto_3
.end method

.method public setCheckBox(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 455
    if-nez p1, :cond_0

    .line 456
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    new-instance v4, Lcom/android/music/list/adapter/MpListGroupAdapter$3;

    invoke-direct {v4, p0}, Lcom/android/music/list/adapter/MpListGroupAdapter$3;-><init>(Lcom/android/music/list/adapter/MpListGroupAdapter;)V

    invoke-virtual {v3, v4}, Lcom/android/music/list/view/AbstractMpListView;->post(Ljava/lang/Runnable;)Z

    .line 491
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget-boolean v3, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    if-nez v3, :cond_2

    move v1, v6

    .line 463
    .local v1, newcheck:Z
    :goto_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 464
    .local v0, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iput-boolean v1, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    .line 465
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iget v2, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mIndex:I

    .line 466
    .local v2, realposition:I
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    aput-boolean v1, v3, v2

    .line 467
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_4

    .line 468
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    aput-boolean v5, v3, v5

    .line 469
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iput-boolean v5, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    .line 470
    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    .line 472
    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    if-nez v3, :cond_3

    .line 473
    iput v5, v0, Landroid/os/Message;->what:I

    .line 488
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    iget-object v3, v3, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-virtual {v3, v0}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #newcheck:Z
    .end local v2           #realposition:I
    :cond_2
    move v1, v5

    .line 462
    goto :goto_1

    .line 475
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #newcheck:Z
    .restart local v2       #realposition:I
    :cond_3
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_2

    .line 479
    :cond_4
    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    .line 480
    iput v6, v0, Landroid/os/Message;->what:I

    .line 481
    iget v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedCount:I

    iget-object v4, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    array-length v4, v4

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_1

    .line 482
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mCheckedList:[Z

    aput-boolean v6, v3, v5

    .line 483
    iget-object v3, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mGroupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;

    iput-boolean v6, v3, Lcom/android/music/list/adapter/MpListGroupAdapter$GroupItem;->mCheck:Z

    goto :goto_2
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 690
    return-void
.end method

.method public setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "mindex"

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mIndexView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 571
    return-void
.end method

.method public setListView(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/music/list/adapter/MpListGroupAdapter;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 452
    return-void
.end method
