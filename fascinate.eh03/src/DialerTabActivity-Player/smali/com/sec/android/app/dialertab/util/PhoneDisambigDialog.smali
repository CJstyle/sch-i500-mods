.class public Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;
.super Ljava/lang/Object;
.source "PhoneDisambigDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;,
        Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhonesAdapter;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mMakePrimary:Z

.field private mPhoneItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonesAdapter:Landroid/widget/ListAdapter;

.field private mPhonesCursor:Landroid/database/Cursor;

.field private mSendSms:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "phonesCursor"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "context"
    .parameter "phonesCursor"
    .parameter "sendSms"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mMakePrimary:Z

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean p3, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mSendSms:Z

    .line 66
    iput-object p2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    .line 68
    invoke-direct {p0, p2}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->makePhoneItemsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/util/Collapser;->collapseList(Ljava/util/ArrayList;)V

    .line 71
    new-instance v2, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhonesAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhonesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhonesAdapter:Landroid/widget/ListAdapter;

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 76
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhonesAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz p3, :cond_0

    const v3, 0x7f09005b

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    .line 82
    return-void

    .line 76
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v3, 0x7f09005a

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private makePhoneItemsList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .parameter "phonesCursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;>;"
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 171
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 173
    .local v0, id:J
    const-string v4, "data1"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, phone:Ljava/lang/String;
    new-instance v4, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;-><init>(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v0           #id:J
    .end local v2           #phone:Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 121
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mMakePrimary:Z

    .line 122
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 97
    iget-object v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p2, :cond_2

    if-ltz p2, :cond_2

    .line 98
    iget-object v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;

    .line 99
    .local v3, phoneItem:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;
    iget-wide v0, v3, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->id:J

    .line 100
    .local v0, id:J
    iget-object v2, v3, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 102
    .local v2, phone:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mMakePrimary:Z

    if-eqz v5, :cond_0

    .line 103
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 104
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "is_super_primary"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    iget-object v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mSendSms:Z

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .end local v0           #id:J
    .end local v2           #phone:Ljava/lang/String;
    .end local v3           #phoneItem:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;
    :goto_0
    return-void

    .line 113
    .restart local v0       #id:J
    .restart local v2       #phone:Ljava/lang/String;
    .restart local v3       #phoneItem:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0           #id:J
    .end local v2           #phone:Ljava/lang/String;
    .end local v3           #phoneItem:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhonesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 126
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mPhoneItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
