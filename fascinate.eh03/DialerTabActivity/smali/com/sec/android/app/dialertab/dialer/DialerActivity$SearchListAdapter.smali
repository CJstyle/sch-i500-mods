.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3784
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    .line 3785
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3786
    iput-object p4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->items:Ljava/util/ArrayList;

    .line 3787
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3790
    move-object/from16 v25, p2

    .line 3791
    .local v25, v:Landroid/view/View;
    if-nez v25, :cond_0

    .line 3792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v4, v0

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/LayoutInflater;

    .line 3793
    .local v26, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f030009

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 3806
    .end local v26           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f060095

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 3808
    .local v14, mFullnameView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->items:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    .line 3809
    .local v23, ti:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3810
    .local v10, args_number:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    .line 3811
    .local v16, mlength:I
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 3812
    .local v22, temp_length:I
    const/16 v19, 0x0

    .line 3814
    .local v19, photoBm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getPhotoID()I

    move-result v4

    if-eqz v4, :cond_2

    .line 3815
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3816
    .local v18, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getPhotoID()I

    move-result v5

    int-to-long v6, v5

    move-object v0, v4

    move-wide v1, v6

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2000(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 3817
    const v4, 0x7f060093

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3821
    .end local v18           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3926
    .end local p0
    :cond_1
    :goto_1
    return-object v25

    .line 3819
    .restart local p0
    .restart local p1
    :cond_2
    const v4, 0x7f060093

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    const v4, 0x7f02009a

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3823
    :pswitch_0
    const v4, 0x7f060095

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3824
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3825
    const v4, 0x7f060096

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3827
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3831
    :cond_3
    :goto_2
    const v4, 0x7f060097

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3832
    const v4, 0x7f060098

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3833
    const v4, 0x7f06009a

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3834
    const v4, 0x7f06009b

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3835
    const v4, 0x7f06009c

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3839
    .restart local p0
    :pswitch_1
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3840
    const v4, 0x7f060095

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object v2, v10

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 3843
    .local v20, revertedNumber:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 3844
    .local v15, mStr:I
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v4, " "

    invoke-direct {v11, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3845
    .local v11, blink:Ljava/lang/StringBuffer;
    if-lez v15, :cond_4

    .line 3850
    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3852
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v15, v4, 0x1

    .line 3856
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3858
    if-ltz v15, :cond_5

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v15, :cond_5

    .line 3859
    const v4, 0x7f060096

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3860
    :cond_5
    if-ltz v15, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v15, v16

    if-lt v4, v5, :cond_6

    add-int v4, v15, v16

    if-gt v15, v4, :cond_6

    .line 3861
    const v4, 0x7f060097

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    add-int v5, v15, v16

    invoke-virtual {v4, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3862
    :cond_6
    add-int v4, v15, v16

    if-ltz v4, :cond_7

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v5, v15, v16

    if-lt v4, v5, :cond_7

    .line 3863
    const v4, 0x7f060098

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    add-int v5, v15, v16

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3864
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 3865
    .local v13, index:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3866
    .local v5, URI_PHONE:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2200()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3868
    .local v12, cur_phone:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    .line 3869
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3870
    const-string v4, "data1"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3871
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3873
    :cond_9
    const v4, 0x7f06009a

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3874
    const v4, 0x7f06009b

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3875
    const v4, 0x7f06009c

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3878
    .end local v5           #URI_PHONE:Landroid/net/Uri;
    .end local v11           #blink:Ljava/lang/StringBuffer;
    .end local v12           #cur_phone:Landroid/database/Cursor;
    .end local v13           #index:Ljava/lang/String;
    .end local v15           #mStr:I
    .end local v20           #revertedNumber:Ljava/lang/String;
    .restart local p0
    :pswitch_2
    const v4, 0x7f060095

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3879
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 3882
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3886
    :goto_3
    const v4, 0x7f060096

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3888
    :cond_a
    const v4, 0x7f060097

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3889
    const v4, 0x7f060098

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3890
    const v4, 0x7f06009a

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move v1, v5

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3891
    const v4, 0x7f06009b

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3892
    const v4, 0x7f06009c

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    add-int v5, v16, v22

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3896
    .restart local p0
    :pswitch_3
    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    .line 3903
    :cond_b
    const v4, 0x7f060095

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3904
    const v4, 0x7f06009a

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v4

    move v1, v5

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3905
    const v4, 0x7f06009b

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3908
    add-int v21, v16, v22

    .line 3909
    .local v21, start:I
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v17

    .line 3910
    .local v17, number:Ljava/lang/String;
    const v4, 0x7f06009c

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 3912
    .local v24, tw:Landroid/widget/TextView;
    if-eqz v24, :cond_1

    .line 3914
    if-ltz v21, :cond_c

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v21

    move v1, v4

    if-le v0, v1, :cond_d

    .line 3915
    :cond_c
    const-string v4, ""

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3917
    :cond_d
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3828
    .end local v17           #number:Ljava/lang/String;
    .end local v21           #start:I
    .end local v24           #tw:Landroid/widget/TextView;
    :catch_0
    move-exception v4

    goto/16 :goto_2

    .line 3883
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 3821
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
