.class public Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpOptionMenuEditTitleScreenLayout.java"


# static fields
.field private static final PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;


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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/playlistImage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mListType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 57
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 58
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->dbid:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mUriImage:Landroid/net/Uri;

    .line 62
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->PHOTO_PICKED_WITH_DATA:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->CAMERA_PICKED_WITH_DATA:I

    .line 65
    iput-object v2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->imgFilePath:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->hasTitle:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    .line 92
    new-instance v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$1;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    iput-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->KeyHandle:Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mListType:I

    .line 89
    iget-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->imgFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->imgFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)Lcom/android/music/common/data/MusicDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->PLAYLIST_IMAGE_VOLUMEPATH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object p2, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mUriImage:Landroid/net/Uri;

    .line 74
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 6
    .parameter "layoutData"

    .prologue
    const/4 v5, 0x1

    .line 109
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mdb:Lcom/android/music/common/data/MusicDB;

    .line 110
    new-instance v2, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v2}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    .line 112
    .local v2, mEditInfo:Landroid/view/inputmethod/EditorInfo;
    iget-object v3, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    .line 113
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 114
    iget-object v3, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    .line 116
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    iput-boolean v5, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    .line 140
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 142
    iget-object v3, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    .local v1, Save:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 145
    .local v0, Cancel:Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    new-instance v4, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;

    invoke-direct {v4, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$2;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v3, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;

    invoke-direct {v3, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$3;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v3, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;

    invoke-direct {v3, p0}, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout$4;-><init>(Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void

    .line 121
    .end local v0           #Cancel:Landroid/widget/Button;
    .end local v1           #Save:Landroid/widget/Button;
    :cond_0
    iget-boolean v3, p1, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLines(I)V

    .line 124
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 127
    iput-boolean v5, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->isDefault:Z

    goto :goto_0

    .line 128
    :cond_1
    iget-boolean v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->hasTitle:Z

    if-nez v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleMainText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLines(I)V

    .line 131
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iput-boolean v5, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->hasTitle:Z

    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->mTitle:Ljava/lang/String;

    .line 137
    iget-object v3, p0, Lcom/android/music/list/layout/MpOptionMenuEditTitleScreenLayout;->titleImage:Landroid/widget/ImageView;

    iget v4, p1, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
