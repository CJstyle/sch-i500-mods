.class public Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpOptionMenuEditTitleScreenLayout.java"


# instance fields
.field private final CAMERA_PICKED_WITH_DATA:I

.field public KeyHandle:Landroid/os/Handler;

.field private final PHOTO_PICKED_WITH_DATA:I

.field public dbid:I

.field private hasTitle:Z

.field private imgFilePath:Ljava/lang/String;

.field private isDefault:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field protected mListType:I

.field public mTitle:Ljava/lang/String;

.field public mUriImage:Landroid/net/Uri;

.field private mdb:Lcom/android/music/common/data/MusicDB;

.field private titleImage:Landroid/widget/ImageView;

.field private titleMainText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mListType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 55
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 56
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->dbid:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mUriImage:Landroid/net/Uri;

    .line 60
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->PHOTO_PICKED_WITH_DATA:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->CAMERA_PICKED_WITH_DATA:I

    .line 63
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->imgFilePath:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->hasTitle:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    .line 90
    new-instance v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    iput-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mContext:Landroid/content/Context;

    .line 86
    iput p2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mListType:I

    .line 87
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mView:Landroid/view/View;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->imgFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->imgFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    return-object v0
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    iput-object p2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mUriImage:Landroid/net/Uri;

    .line 72
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 6
    .parameter "layoutData"

    .prologue
    const/4 v5, 0x1

    .line 107
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 108
    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 110
    .local v2, mEditInfo:Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 111
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 112
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 114
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    iput-boolean v5, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    .line 137
    :goto_0
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 138
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 141
    .local v1, Save:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 143
    .local v0, Cancel:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    new-instance v3, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;

    invoke-direct {v3, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v3, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;

    invoke-direct {v3, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    return-void

    .line 119
    .end local v0           #Cancel:Landroid/widget/Button;
    .end local v1           #Save:Landroid/widget/Button;
    :cond_0
    iget-boolean v3, p1, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    if-eqz v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLines(I)V

    .line 122
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 125
    iput-boolean v5, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    goto :goto_0

    .line 126
    :cond_1
    iget-boolean v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->hasTitle:Z

    if-nez v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLines(I)V

    .line 129
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iput-boolean v5, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->hasTitle:Z

    goto :goto_0

    .line 134
    :cond_2
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
