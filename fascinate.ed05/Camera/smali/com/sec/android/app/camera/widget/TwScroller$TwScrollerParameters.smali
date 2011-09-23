.class public Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;
.super Ljava/lang/Object;
.source "TwScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/TwScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwScrollerParameters"
.end annotation


# instance fields
.field private mButtonHeight:I

.field private mButtonWidth:I

.field private mDownButtonDimmedImageId:I

.field private mDownButtonNormalImageId:I

.field private mDownButtonPressedImageId:I

.field private mDownButtonX:I

.field private mDownButtonY:I

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mPageTextFontSize:I

.field private mPageTextHeight:I

.field private mPageTextWidth:I

.field private mPageTextX:I

.field private mPageTextY:I

.field private mUpButtonDimmedImageId:I

.field private mUpButtonNormalImageId:I

.field private mUpButtonPressedImageId:I

.field private mUpButtonX:I

.field private mUpButtonY:I

.field final synthetic this$0:Lcom/sec/android/app/camera/widget/TwScroller;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/TwScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->this$0:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method


# virtual methods
.method public getButtonHeight()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mButtonHeight:I

    return v0
.end method

.method public getButtonWidth()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mButtonWidth:I

    return v0
.end method

.method public getDownButtonDimmedImageId()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonDimmedImageId:I

    return v0
.end method

.method public getDownButtonNormalImageId()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonNormalImageId:I

    return v0
.end method

.method public getDownButtonPressedImageId()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonPressedImageId:I

    return v0
.end method

.method public getDownButtonX()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonX:I

    return v0
.end method

.method public getDownButtonY()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonY:I

    return v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mLayoutHeight:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mLayoutWidth:I

    return v0
.end method

.method public getPageTextFontSize()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextFontSize:I

    return v0
.end method

.method public getPageTextHeight()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextHeight:I

    return v0
.end method

.method public getPageTextWidth()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextWidth:I

    return v0
.end method

.method public getPageTextX()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextX:I

    return v0
.end method

.method public getPageTextY()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextY:I

    return v0
.end method

.method public getUpButtonDimmedImageId()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonDimmedImageId:I

    return v0
.end method

.method public getUpButtonNormalImageId()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonNormalImageId:I

    return v0
.end method

.method public getUpButtonPressedImageId()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonPressedImageId:I

    return v0
.end method

.method public getUpButtonX()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonX:I

    return v0
.end method

.method public getUpButtonY()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonY:I

    return v0
.end method

.method public setButtonHeight(I)V
    .locals 0
    .parameter "mButtonHeight"

    .prologue
    .line 291
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mButtonHeight:I

    .line 292
    return-void
.end method

.method public setButtonWidth(I)V
    .locals 0
    .parameter "mButtonWidth"

    .prologue
    .line 283
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mButtonWidth:I

    .line 284
    return-void
.end method

.method public setDownButtonDimmedImageId(I)V
    .locals 0
    .parameter "mDownButtonDimmedImageId"

    .prologue
    .line 347
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonDimmedImageId:I

    .line 348
    return-void
.end method

.method public setDownButtonNormalImageId(I)V
    .locals 0
    .parameter "mDownButtonNormalImageId"

    .prologue
    .line 339
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonNormalImageId:I

    .line 340
    return-void
.end method

.method public setDownButtonPressedImageId(I)V
    .locals 0
    .parameter "mDownButtonPressedImageId"

    .prologue
    .line 355
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonPressedImageId:I

    .line 356
    return-void
.end method

.method public setDownButtonX(I)V
    .locals 0
    .parameter "mDownButtonX"

    .prologue
    .line 227
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonX:I

    .line 228
    return-void
.end method

.method public setDownButtonY(I)V
    .locals 0
    .parameter "mDownButtonY"

    .prologue
    .line 235
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mDownButtonY:I

    .line 236
    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0
    .parameter "mLayoutHeight"

    .prologue
    .line 307
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mLayoutHeight:I

    .line 308
    return-void
.end method

.method public setLayoutWidth(I)V
    .locals 0
    .parameter "mLayoutWidth"

    .prologue
    .line 299
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mLayoutWidth:I

    .line 300
    return-void
.end method

.method public setPageTextFontSize(I)V
    .locals 0
    .parameter "mPageTextFontSize"

    .prologue
    .line 275
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextFontSize:I

    .line 276
    return-void
.end method

.method public setPageTextHeight(I)V
    .locals 0
    .parameter "mPageTextHeight"

    .prologue
    .line 267
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextHeight:I

    .line 268
    return-void
.end method

.method public setPageTextWidth(I)V
    .locals 0
    .parameter "mPageTextWidth"

    .prologue
    .line 251
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextWidth:I

    .line 252
    return-void
.end method

.method public setPageTextX(I)V
    .locals 0
    .parameter "mPageTextX"

    .prologue
    .line 243
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextX:I

    .line 244
    return-void
.end method

.method public setPageTextY(I)V
    .locals 0
    .parameter "mPageTextY"

    .prologue
    .line 259
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mPageTextY:I

    .line 260
    return-void
.end method

.method public setUpButtonDimmedImageId(I)V
    .locals 0
    .parameter "mUpButtonDimmedImageId"

    .prologue
    .line 323
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonDimmedImageId:I

    .line 324
    return-void
.end method

.method public setUpButtonNormalImageId(I)V
    .locals 0
    .parameter "mUpButtonNormalImageId"

    .prologue
    .line 315
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonNormalImageId:I

    .line 316
    return-void
.end method

.method public setUpButtonPressedImageId(I)V
    .locals 0
    .parameter "mUpButtonPressedImageId"

    .prologue
    .line 331
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonPressedImageId:I

    .line 332
    return-void
.end method

.method public setUpButtonX(I)V
    .locals 0
    .parameter "mUpButtonX"

    .prologue
    .line 211
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonX:I

    .line 212
    return-void
.end method

.method public setUpButtonY(I)V
    .locals 0
    .parameter "mUpButtonY"

    .prologue
    .line 219
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScroller$TwScrollerParameters;->mUpButtonY:I

    .line 220
    return-void
.end method
