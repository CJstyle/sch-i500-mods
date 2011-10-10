.class public Lcom/android/mms/ui/SlideshowEditActivity;
.super Landroid/app/Activity;
.source "SlideshowEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;
    }
.end annotation


# instance fields
.field private mAddSlideItem:Landroid/view/View;

.field private mDirty:Z

.field private mList:Landroid/widget/ListView;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mResultIntent:Landroid/content/Intent;

.field private mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mState:Landroid/os/Bundle;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 76
    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 462
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowEditActivity$2;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowEditActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowEditActivity;->openSlide(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideshowEditActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowEditActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V

    return-void
.end method

.method private addNewSlide()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    :cond_2
    const v0, 0x7f090065

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mToast:Landroid/widget/Toast;

    .line 381
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private adjustAddSlideVisibility()V
    .locals 9

    .prologue
    const v8, 0x7f0800a4

    const v7, 0x7f0800a2

    const v6, 0x7f070004

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 343
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 344
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 346
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 347
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const v3, 0x7f0800a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 350
    .restart local v1       #text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 353
    .local v0, image:Landroid/widget/ImageView;
    const v2, 0x7f02002b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    :goto_0
    return-void

    .line 356
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 357
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 359
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 360
    .restart local v1       #text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 362
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    const v3, 0x7f0800a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 363
    .restart local v1       #text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 366
    .restart local v0       #image:Landroid/widget/ImageView;
    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private cleanupSlideshowModel()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 247
    :cond_0
    return-void
.end method

.method private createAddSlideItem()Landroid/view/View;
    .locals 5

    .prologue
    .line 157
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideshowEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/LayoutInflater;

    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 161
    .local v2, v:Landroid/view/View;
    const v3, 0x7f0800a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x7f090035

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 164
    const v3, 0x7f0800a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #text:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 165
    .restart local v1       #text:Landroid/widget/TextView;
    const v3, 0x7f090036

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 166
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 169
    .local v0, image:Landroid/widget/ImageView;
    const v3, 0x7f02002a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    return-object v2
.end method

.method private initSlideList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 253
    new-instance v0, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 254
    new-instance v0, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    const v1, 0x7f030031

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;-><init>(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    return-void
.end method

.method private openSlide(I)V
    .locals 2
    .parameter

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    const-string v1, "slide_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 337
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 389
    if-eq p2, v2, :cond_0

    .line 414
    :goto_0
    return-void

    .line 393
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 395
    :pswitch_0
    monitor-enter p0

    .line 396
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z

    .line 397
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 400
    if-eqz p3, :cond_1

    const-string v1, "done"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 397
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 406
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/SlideshowEditActivity"

    const-string v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const-string v3, "Mms/SlideshowEditActivity"

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v1, 0x7f030032

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->setContentView(I)V

    .line 94
    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    .line 96
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->createAddSlideItem()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mAddSlideItem:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/SlideshowEditActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowEditActivity$1;-><init>(Lcom/android/mms/ui/SlideshowEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    if-eqz p1, :cond_0

    .line 112
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "message_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 122
    const-string v1, "Mms/SlideshowEditActivity"

    const-string v1, "Cannot startup activity, null Uri."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    .line 138
    :goto_1
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 128
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->initSlideList()V

    .line 133
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/SlideshowEditActivity"

    const-string v1, "Failed to initialize the slide-list."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->cleanupSlideshowModel()V

    .line 239
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 295
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 297
    .local v0, position:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return v3

    .line 299
    :pswitch_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideUp(I)V

    .line 301
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 302
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    sub-int v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 306
    :pswitch_1
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->moveSlideDown(I)V

    .line 308
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 309
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 313
    :pswitch_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 315
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 319
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->addNewSlide()V

    goto :goto_0

    .line 323
    :pswitch_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 324
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->notifyDataSetChanged()V

    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->finish()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 220
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 225
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 226
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 227
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 233
    return-void

    .line 228
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 229
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 232
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f020030

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 263
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 264
    .local v0, position:I
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_4

    .line 266
    if-lez v0, :cond_0

    .line 267
    const v1, 0x7f090032

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020048

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideListAdapter:Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowEditActivity$SlideListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_1

    .line 271
    const v1, 0x7f090033

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020047

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 276
    const v1, 0x7f090035

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    :cond_2
    const/4 v1, 0x2

    const v2, 0x7f090034

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x20200df

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 287
    :cond_3
    :goto_0
    const/4 v1, 0x4

    const v2, 0x7f090037

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 290
    return v4

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-ge v1, v6, :cond_3

    .line 283
    const v1, 0x7f090035

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v2, "slide_index"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowEditActivity;->adjustAddSlideVisibility()V

    .line 193
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "slide_index"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    const-string v1, "message_uri"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditActivity;->mState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    return-void
.end method
