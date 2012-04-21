.class public Lcom/android/phone/RejectCallWithMsgLayout;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;
    }
.end annotation


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsgLayout;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    .line 42
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03003b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f080105

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$1;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    .line 78
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f080106

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 84
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 92
    return-void
.end method

.method setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    .line 88
    return-void
.end method

.method updateItemList()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v10, strList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/phone/RejectCallWithMsgLayout;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 98
    .local v7, cur:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 100
    .local v9, rejectMessage:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 101
    const-string v1, "RejectCallWithMsgLayout"

    const-string v2, "rejectmsg cursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    :cond_1
    const-string v1, "reject_message"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    if-eqz v9, :cond_2

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v8, v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 114
    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 115
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 116
    .local v6, button:Landroid/widget/Button;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$2;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 128
    .end local v6           #button:Landroid/widget/Button;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
