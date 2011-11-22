.class Lcom/android/browser/ActiveTabsPage$TabsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ActiveTabsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsListAdapter"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotified:Z

.field private mReturnedCount:I

.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 1
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mHandler:Landroid/os/Handler;

    .line 211
    return-void
.end method

.method static synthetic access$902(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 216
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    if-eq v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyChange()V

    .line 218
    iget v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    .line 222
    :goto_0
    return v1

    .line 220
    :cond_0
    iput v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    .line 221
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    move v1, v0

    .line 222
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 29
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v21

    .line 244
    .local v21, tabCount:I
    if-nez p2, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/browser/ActiveTabsPage;->access$700(Lcom/android/browser/ActiveTabsPage;)Landroid/view/LayoutInflater;

    move-result-object v25

    const v26, 0x7f030025

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/browser/ActiveTabsPage;->access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;

    move-result-object v25

    const-string v26, "window"

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/view/WindowManager;

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 249
    .local v12, display:Landroid/view/Display;
    invoke-virtual {v12}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 252
    .local v13, orientation:I
    const v25, 0x7f0d0086

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 253
    .local v18, screenView:Landroid/widget/ImageView;
    const v25, 0x7f0d0087

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 255
    .local v9, close:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v20

    .line 256
    .local v20, tab:Lcom/android/browser/Tab;
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 258
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 259
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v19

    .line 264
    .local v19, screenshot:Landroid/graphics/Picture;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Picture;->getWidth()I

    move-result v15

    .line 265
    .local v15, originWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Picture;->getHeight()I

    move-result v14

    .line 266
    .local v14, originHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    .line 267
    .local v6, bitWidth:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    .line 268
    .local v5, bitHeight:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getWidth()I

    move-result v24

    .line 269
    .local v24, winWidth:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/webkit/WebView;->getHeight()I

    move-result v23

    .line 270
    .local v23, winHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/browser/ActiveTabsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v11, v0

    .line 272
    .local v11, densityf:F
    const/16 v25, 0x1

    move/from16 v0, v25

    move v1, v13

    if-eq v0, v1, :cond_1

    const/16 v25, 0x3

    move/from16 v0, v25

    move v1, v13

    if-ne v0, v1, :cond_7

    .line 273
    :cond_1
    move v0, v11

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff8

    cmpl-double v25, v25, v27

    if-nez v25, :cond_3

    .line 274
    const/16 v6, 0x13c

    .line 275
    const/16 v5, 0x190

    .line 313
    :goto_0
    const/high16 v16, 0x3f80

    .line 314
    .local v16, scaleFactorX:F
    const/high16 v17, 0x3f80

    .line 316
    .local v17, scaleFactorY:F
    if-lez v15, :cond_2

    if-lez v14, :cond_2

    if-lez v24, :cond_2

    if-lez v23, :cond_2

    .line 319
    move v0, v6

    int-to-float v0, v0

    move/from16 v25, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v16, v25, v26

    .line 321
    div-int v25, v14, v15

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4004

    cmpl-double v25, v25, v27

    if-lez v25, :cond_c

    .line 322
    move/from16 v17, v16

    .line 327
    :goto_1
    sget-object v25, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move/from16 v1, v23

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 330
    .local v7, bm:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    .local v8, canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 333
    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 335
    if-eqz v7, :cond_2

    .line 336
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    .end local v5           #bitHeight:I
    .end local v6           #bitWidth:I
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v11           #densityf:F
    .end local v14           #originHeight:I
    .end local v15           #originWidth:I
    .end local v16           #scaleFactorX:F
    .end local v17           #scaleFactorY:F
    .end local v19           #screenshot:Landroid/graphics/Picture;
    .end local v23           #winHeight:I
    .end local v24           #winWidth:I
    :cond_2
    move/from16 v10, p1

    .line 352
    .local v10, closePosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v25

    add-int/lit8 v26, v10, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v22

    .line 353
    .local v22, updateTab:Lcom/android/browser/Tab;
    new-instance v25, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move v2, v10

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;-><init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;IILcom/android/browser/Tab;)V

    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    return-object p2

    .line 276
    .end local v10           #closePosition:I
    .end local v22           #updateTab:Lcom/android/browser/Tab;
    .restart local v5       #bitHeight:I
    .restart local v6       #bitWidth:I
    .restart local v11       #densityf:F
    .restart local v14       #originHeight:I
    .restart local v15       #originWidth:I
    .restart local v19       #screenshot:Landroid/graphics/Picture;
    .restart local v23       #winHeight:I
    .restart local v24       #winWidth:I
    :cond_3
    const/high16 v25, 0x3f80

    cmpl-float v25, v11, v25

    if-nez v25, :cond_5

    .line 277
    const/16 v6, 0xd2

    .line 278
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 279
    const/16 v5, 0x118

    goto/16 :goto_0

    .line 281
    :cond_4
    const/16 v5, 0x122

    goto/16 :goto_0

    .line 285
    :cond_5
    const/16 v6, 0x96

    .line 286
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    .line 287
    const/16 v5, 0xaa

    goto/16 :goto_0

    .line 289
    :cond_6
    const/16 v5, 0xb4

    goto/16 :goto_0

    .line 293
    :cond_7
    move v0, v11

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x3ff8

    cmpl-double v25, v25, v27

    if-nez v25, :cond_8

    .line 294
    const/16 v6, 0xfe

    .line 295
    const/16 v5, 0x190

    goto/16 :goto_0

    .line 296
    :cond_8
    const/high16 v25, 0x3f80

    cmpl-float v25, v11, v25

    if-nez v25, :cond_a

    .line 297
    const/16 v6, 0xbe

    .line 298
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 299
    const/16 v5, 0x104

    goto/16 :goto_0

    .line 301
    :cond_9
    const/16 v5, 0x118

    goto/16 :goto_0

    .line 304
    :cond_a
    const/16 v6, 0x6e

    .line 305
    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 306
    const/16 v5, 0xa0

    goto/16 :goto_0

    .line 308
    :cond_b
    const/16 v5, 0xaa

    goto/16 :goto_0

    .line 324
    .restart local v16       #scaleFactorX:F
    .restart local v17       #scaleFactorY:F
    :cond_c
    move v0, v5

    int-to-float v0, v0

    move/from16 v25, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v17, v25, v26

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x2

    return v0
.end method

.method notifyChange()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;-><init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method
