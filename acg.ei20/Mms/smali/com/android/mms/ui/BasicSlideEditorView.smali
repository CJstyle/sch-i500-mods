.class public Lcom/android/mms/ui/BasicSlideEditorView;
.super Landroid/widget/LinearLayout;
.source "BasicSlideEditorView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    }
.end annotation


# instance fields
.field private mAudioNameView:Landroid/widget/TextView;

.field private mAudioView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mMmsRemainChar:I

.field private mMmsRemainCharView:Landroid/widget/TextView;

.field private mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mOnTextChangedListenerEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BasicSlideEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BasicSlideEditorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainChar:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/BasicSlideEditorView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainChar:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BasicSlideEditorView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getEditView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideSoftInputForm(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .parameter "imm"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 213
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    .line 74
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/BasicSlideEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BasicSlideEditorView$1;-><init>(Lcom/android/mms/ui/BasicSlideEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 253
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 255
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 285
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 290
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/BasicSlideEditorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 182
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 186
    return-void
.end method

.method public setMmsCounter(I)V
    .locals 3
    .parameter "mmsSize"

    .prologue
    .line 332
    const/16 v1, 0x3e8

    sub-int v0, v1, p1

    .line 333
    .local v0, mMmsSize:I
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 301
    if-nez p2, :cond_0

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 309
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/BasicSlideEditorView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 263
    return-void
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 328
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x3e8

    .line 189
    iput-boolean v3, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 190
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainChar:I

    .line 201
    iget v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainChar:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainChar:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 208
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mMmsRemainCharView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 217
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020091

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v2, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 231
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/BasicSlideEditorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 237
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public stopMovie()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method
