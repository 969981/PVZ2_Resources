.class public Lgbsdk/common/host/abah;
.super Ljava/lang/Object;
.source "DbStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abah$ab;,
        Lgbsdk/common/host/abah$ac;
    }
.end annotation


# static fields
.field public static final bA:[Lgbsdk/common/host/abah$ac;

.field public static final by:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgbsdk/common/host/aban;",
            ">;"
        }
    .end annotation
.end field

.field public static final bz:[Lgbsdk/common/host/aban;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final an:Lgbsdk/common/host/ap;

.field public final bB:Lgbsdk/common/host/abah$ab;

.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lgbsdk/common/host/abaf;

    invoke-direct {v0}, Lgbsdk/common/host/abaf;-><init>()V

    .line 3
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "page"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lgbsdk/common/host/abad;

    invoke-direct {v0}, Lgbsdk/common/host/abad;-><init>()V

    .line 5
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "launch"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lgbsdk/common/host/abab;

    invoke-direct {v0}, Lgbsdk/common/host/abab;-><init>()V

    .line 7
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "terminate"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lgbsdk/common/host/abag;

    invoke-direct {v0}, Lgbsdk/common/host/abag;-><init>()V

    .line 9
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lgbsdk/common/host/aban;

    .line 10
    new-instance v2, Lgbsdk/common/host/abak;

    invoke-direct {v2}, Lgbsdk/common/host/abak;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lgbsdk/common/host/abae;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lgbsdk/common/host/abae;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    new-instance v2, Lgbsdk/common/host/abaj;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, ""

    invoke-direct {v2, v7, v6}, Lgbsdk/common/host/abaj;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    sput-object v1, Lgbsdk/common/host/abah;->bz:[Lgbsdk/common/host/aban;

    .line 13
    array-length v2, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_0

    aget-object v8, v1, v7

    .line 14
    invoke-static {v8}, Lgbsdk/common/host/abah;->b(Lgbsdk/common/host/aban;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lgbsdk/common/host/abaa;

    invoke-direct {v1, v4, v4}, Lgbsdk/common/host/abaa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v2, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v4, "profile"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Lgbsdk/common/host/abah$ac;

    .line 18
    new-instance v1, Lgbsdk/common/host/abah$ac;

    invoke-direct {v1}, Lgbsdk/common/host/abah$ac;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lgbsdk/common/host/abah$ac;

    invoke-direct {v1}, Lgbsdk/common/host/abah$ac;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lgbsdk/common/host/abah$ac;

    invoke-direct {v1}, Lgbsdk/common/host/abah$ac;-><init>()V

    aput-object v1, v0, v6

    sput-object v0, Lgbsdk/common/host/abah;->bA:[Lgbsdk/common/host/abah$ac;

    return-void
.end method

.method public constructor <init>(Lgbsdk/common/host/ap;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lgbsdk/common/host/abah$ab;

    .line 3
    iget-object v1, p1, Lgbsdk/common/host/ap;->ap:Landroid/app/Application;

    const/4 v2, 0x0

    const/16 v3, 0x27

    .line 4
    invoke-direct {v0, v1, p2, v2, v3}, Lgbsdk/common/host/abah$ab;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lgbsdk/common/host/abah;->bB:Lgbsdk/common/host/abah$ab;

    .line 5
    iput-object p1, p0, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    return-void
.end method

.method public static b(Lgbsdk/common/host/aban;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "56698ac5c4819b38e1e4968b75c6e4c9"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    invoke-virtual {p0}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public M()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abag;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "fb3d93f4878534a58359e2a52bea049a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 410
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abag;

    const/4 v2, 0x0

    .line 415
    :try_start_0
    iget-object v3, p0, Lgbsdk/common/host/abah;->bB:Lgbsdk/common/host/abah$ab;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT * FROM pack ORDER BY _id DESC LIMIT 8"

    .line 416
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 417
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    invoke-virtual {v1}, Lgbsdk/common/host/aban;->K()Lgbsdk/common/host/aban;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abag;

    .line 419
    invoke-virtual {v1, v3}, Lgbsdk/common/host/abag;->a(Landroid/database/Cursor;)I

    .line 420
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v2

    .line 423
    :goto_1
    :try_start_2
    invoke-static {v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_2

    .line 426
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPack, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_3

    .line 430
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public final a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    new-instance v6, Ljava/lang/Byte;

    invoke-direct {v6, v3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const/4 v6, 0x4

    aput-object v4, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    sget-object v6, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v8, "4788b0ba789480b187a82336775ed283"

    move-object/from16 v9, p0

    invoke-static {v5, v9, v6, v7, v8}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v0, v5, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 3
    :cond_0
    sget-object v5, Lgbsdk/common/host/abah;->bA:[Lgbsdk/common/host/abah$ac;

    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v10, v5, v8

    const-string v11, ""

    .line 4
    iput-object v11, v10, Lgbsdk/common/host/abah$ac;->a:Ljava/lang/String;

    .line 5
    iput v7, v10, Lgbsdk/common/host/abah$ac;->b:I

    .line 6
    iput v7, v10, Lgbsdk/common/host/abah$ac;->c:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    if-ge v5, v0, :cond_2

    .line 7
    aput-object v6, v4, v5

    .line 8
    aput-wide v10, p6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v8, 0xc8

    const/16 v12, 0xc8

    :goto_2
    if-lez v12, :cond_a

    .line 13
    sget-object v0, Lgbsdk/common/host/abah;->bz:[Lgbsdk/common/host/aban;

    array-length v13, v0

    if-ge v5, v13, :cond_a

    .line 14
    aget-object v0, v0, v5

    .line 15
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 16
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT * FROM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "session_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_3

    const-string v15, "=\'"

    goto :goto_3

    :cond_3
    const-string v15, "!=\'"

    :goto_3
    :try_start_1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\' ORDER BY "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " LIMIT "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 17
    invoke-virtual {v1, v14, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v16, v10

    const/4 v15, 0x0

    .line 18
    :goto_4
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_6

    if-gt v15, v8, :cond_6

    .line 19
    invoke-virtual {v0, v14}, Lgbsdk/common/host/aban;->a(Landroid/database/Cursor;)I

    .line 20
    sget-object v18, Lgbsdk/common/host/abah;->bA:[Lgbsdk/common/host/abah$ac;

    aget-object v7, v18, v5

    .line 21
    invoke-virtual {v7, v0}, Lgbsdk/common/host/abah$ac;->b(Lgbsdk/common/host/aban;)V

    .line 22
    sget-boolean v7, Lgbsdk/common/host/abdn;->b:Z

    if-eqz v7, :cond_4

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryEvent, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_4
    invoke-virtual {v0}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v13, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 27
    iget-wide v7, v0, Lgbsdk/common/host/aban;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v18, v7, v16

    if-lez v18, :cond_5

    move-wide/from16 v16, v7

    :cond_5
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xc8

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v14, v6

    move-wide/from16 v16, v10

    .line 33
    :goto_5
    :try_start_3
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v14, :cond_7

    .line 36
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_7
    aput-object v13, v4, v5

    .line 40
    aput-wide v16, p6, v5

    .line 41
    aget-object v0, v4, v5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    sub-int/2addr v12, v0

    .line 43
    sget-object v7, Lgbsdk/common/host/abah;->bA:[Lgbsdk/common/host/abah$ac;

    aget-object v7, v7, v5

    iput v0, v7, Lgbsdk/common/host/abah$ac;->c:I

    if-lez v12, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    const/4 v7, 0x0

    const/16 v8, 0xc8

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_9

    .line 44
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :cond_a
    add-int/lit8 v0, v5, 0x1

    .line 45
    :goto_6
    array-length v1, v4

    if-ge v0, v1, :cond_b

    .line 46
    aput-object v6, v4, v0

    .line 47
    aput-wide v10, p6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return v5
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Byte;

    invoke-direct {v2, p3}, Ljava/lang/Byte;-><init>(B)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p4, p5}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1fa628d632b663acf1dbbc5a03f33209"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "session_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, "=\'"

    goto :goto_0

    :cond_1
    const-string p1, "!=\'"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lgbsdk/common/host/abad;Ljava/util/HashMap;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbsdk/common/host/abad;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8919ddbe1db2b984163e6ba84b6b9023"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    return-object p1

    .line 243
    :cond_0
    iget-object p1, p1, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "item_impression"

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 245
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 247
    :cond_2
    :goto_0
    sget-object p1, Lgbsdk/common/host/abap;->bW:Lgbsdk/common/host/abdp;

    if-eqz p1, :cond_3

    .line 248
    invoke-interface {p1}, Lgbsdk/common/host/abdp;->a()Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 249
    sget-object p1, Lgbsdk/common/host/abap;->bW:Lgbsdk/common/host/abdp;

    if-eqz p1, :cond_4

    .line 250
    invoke-interface {p1, p2, v0}, Lgbsdk/common/host/abdp;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_4
    return-object v0
.end method

.method public final a(Lgbsdk/common/host/abad;ZLgbsdk/common/host/abab;Lgbsdk/common/host/abaf;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .locals 22

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    new-instance v7, Ljava/lang/Byte;

    invoke-direct {v7, v2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v7, 0x2

    aput-object v3, v5, v7

    const/4 v7, 0x3

    aput-object v0, v5, v7

    const/4 v7, 0x4

    aput-object v4, v5, v7

    sget-object v7, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v9, "4841a4ac4666cce8df32dbb3a62799d2"

    move-object/from16 v10, p0

    invoke-static {v5, v10, v7, v6, v9}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v0, v5, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    return-object v0

    .line 319
    :cond_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v7, 0x0

    .line 325
    :try_start_0
    iget-object v9, v1, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 326
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM page WHERE session_id"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v6, "=\'"

    const-string v17, "!=\'"

    if-eqz v2, :cond_1

    move-object v11, v6

    goto :goto_0

    :cond_1
    move-object/from16 v11, v17

    :goto_0
    :try_start_1
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' ORDER BY "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_2

    const-string v9, "session_id,"

    goto :goto_1

    :cond_2
    const-string v9, ""

    :goto_1
    :try_start_2
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "duration"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " DESC LIMIT 500"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 327
    invoke-virtual {v4, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 330
    :try_start_3
    new-instance v11, Ljava/util/HashMap;

    const/16 v12, 0x8

    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v12, v7

    move-object v15, v12

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    .line 332
    :goto_2
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 333
    invoke-virtual {v0, v9}, Lgbsdk/common/host/abaf;->a(Landroid/database/Cursor;)I

    .line 334
    sget-boolean v16, Lgbsdk/common/host/abdn;->b:Z

    if-eqz v16, :cond_3

    .line 335
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "queryPage, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    :cond_3
    iget-object v13, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 338
    invoke-virtual/range {p4 .. p4}, Lgbsdk/common/host/abaf;->h()Z

    move-result v14

    if-nez v14, :cond_6

    .line 339
    iget-object v14, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v8

    goto :goto_3

    :cond_4
    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-wide v13, v0, Lgbsdk/common/host/abaf;->bP:J

    const-wide/16 v20, 0x3e8

    cmp-long v16, v13, v20

    if-ltz v16, :cond_5

    add-long v18, v18, v13

    goto :goto_4

    :cond_5
    add-long v18, v18, v20

    .line 346
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 347
    iget-object v13, v0, Lgbsdk/common/host/abaf;->p:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 348
    iget-object v12, v0, Lgbsdk/common/host/abaf;->p:Ljava/lang/String;

    .line 349
    iget-object v15, v0, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    goto :goto_5

    :cond_6
    if-eqz v13, :cond_8

    .line 353
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 354
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-lez v14, :cond_7

    .line 355
    iget-object v14, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 357
    :cond_7
    iget-object v13, v0, Lgbsdk/common/host/abaf;->n:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    const-wide/16 v13, 0x3e8

    .line 362
    iput-wide v13, v0, Lgbsdk/common/host/abaf;->bP:J

    .line 363
    iget-wide v13, v0, Lgbsdk/common/host/abaf;->bP:J

    add-long v18, v18, v13

    .line 364
    invoke-virtual/range {p4 .. p4}, Lgbsdk/common/host/aban;->f()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    :goto_5
    const/16 v16, 0x1

    goto/16 :goto_2

    :cond_a
    if-eqz v16, :cond_c

    .line 370
    iget-object v0, v1, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DELETE FROM page WHERE session_id"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object/from16 v6, v17

    :goto_6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v12, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v7

    move-object v12, v9

    :goto_7
    move-object v15, v12

    const-wide/16 v18, 0x0

    .line 379
    :goto_8
    :try_start_5
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v9, :cond_d

    .line 378
    :cond_c
    :goto_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_11

    const-wide/16 v8, 0x3e8

    cmp-long v0, v18, v8

    if-lez v0, :cond_e

    move-wide/from16 v13, v18

    goto :goto_a

    :cond_e
    move-wide v13, v8

    .line 388
    :goto_a
    iput-wide v13, v3, Lgbsdk/common/host/abab;->bP:J

    if-eqz v2, :cond_f

    .line 390
    iget-object v0, v1, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 391
    iget-wide v8, v1, Lgbsdk/common/host/aban;->b:J

    add-long/2addr v8, v13

    invoke-virtual {v3, v8, v9}, Lgbsdk/common/host/aban;->a(J)V

    goto :goto_b

    .line 394
    :cond_f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const-wide/16 v8, 0x0

    .line 395
    invoke-virtual {v3, v8, v9}, Lgbsdk/common/host/aban;->a(J)V

    .line 397
    :goto_b
    iget-wide v8, v1, Lgbsdk/common/host/aban;->bw:J

    iput-wide v8, v3, Lgbsdk/common/host/aban;->bw:J

    .line 398
    iget-object v0, v1, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    .line 399
    iget-object v0, v1, Lgbsdk/common/host/aban;->g:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/common/host/aban;->g:Ljava/lang/String;

    .line 400
    iget-object v0, v1, Lgbsdk/common/host/aban;->h:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/common/host/aban;->h:Ljava/lang/String;

    .line 401
    iget-wide v8, v3, Lgbsdk/common/host/aban;->b:J

    iput-wide v8, v3, Lgbsdk/common/host/abab;->az:J

    .line 402
    invoke-static {}, Lgbsdk/common/host/av;->d()J

    move-result-wide v8

    iput-wide v8, v3, Lgbsdk/common/host/aban;->c:J

    .line 403
    iput-object v7, v3, Lgbsdk/common/host/abab;->n:Ljava/lang/String;

    .line 404
    iget-object v0, v1, Lgbsdk/common/host/abad;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 405
    iget-object v0, v1, Lgbsdk/common/host/abad;->o:Ljava/lang/String;

    iput-object v0, v3, Lgbsdk/common/host/abab;->n:Ljava/lang/String;

    goto :goto_c

    .line 406
    :cond_10
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 407
    iput-object v12, v3, Lgbsdk/common/host/abab;->n:Ljava/lang/String;

    .line 408
    iput-object v15, v3, Lgbsdk/common/host/aban;->f:Ljava/lang/String;

    :cond_11
    :goto_c
    return-object v5

    :catchall_3
    move-exception v0

    move-object v1, v0

    if-eqz v9, :cond_12

    .line 409
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v1
.end method

.method public final a(Lgbsdk/common/host/abad;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9fc543e8186d1040a19d86e2aa6b35c5"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    .line 135
    :cond_0
    iget-object v0, p1, Lgbsdk/common/host/abad;->m:Ljava/lang/String;

    iget-object v1, p0, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    .line 136
    iget-object v1, v1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 137
    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lgbsdk/common/host/abad;->bd:I

    iget-object v1, p0, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    .line 138
    iget-object v1, v1, Lgbsdk/common/host/ap;->as:Lgbsdk/common/host/abbf;

    .line 139
    invoke-virtual {v1}, Lgbsdk/common/host/abbf;->H()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 141
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 142
    invoke-static {v0, p2}, Lgbsdk/common/host/abdh;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "app_version"

    .line 143
    :try_start_1
    iget-object v2, p1, Lgbsdk/common/host/abad;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "version_code"

    .line 144
    :try_start_2
    iget p1, p1, Lgbsdk/common/host/abad;->bd:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2168ecc7d817d69dc6185fff5a15bfee"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    sget-object v0, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abad;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT * FROM launch ORDER BY _id LIMIT 5"

    .line 213
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 214
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Lgbsdk/common/host/abad;->a(Landroid/database/Cursor;)I

    .line 218
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    invoke-static {}, Lgbsdk/common/host/abdk;->P()Lgbsdk/common/host/abdk;

    move-result-object v2

    iget-wide v3, v0, Lgbsdk/common/host/aban;->a:J

    iget-object v5, v0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, p1}, Lgbsdk/common/host/abdk;->a(JLjava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 222
    :try_start_2
    invoke-static {v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 224
    :goto_1
    iget-object v2, v0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 231
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 232
    :try_start_4
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_2

    .line 236
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 238
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void

    :catchall_3
    move-exception p1

    if-eqz v1, :cond_3

    .line 239
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p2

    .line 241
    invoke-static {p2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 242
    :cond_3
    :goto_3
    throw p1
.end method

.method public a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 13

    move-object v7, p0

    move-object v0, p1

    move/from16 v1, p4

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v4, Ljava/lang/Byte;

    move v8, p2

    invoke-direct {v4, p2}, Ljava/lang/Byte;-><init>(B)V

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object p3, v2, v4

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v6, 0x3

    aput-object v4, v2, v6

    sget-object v4, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v6, "95f10c010c558f9866a50a011289b025"

    invoke-static {v2, p0, v4, v3, v6}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 251
    iget-object v2, v7, Lgbsdk/common/host/abah;->bB:Lgbsdk/common/host/abah$ab;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v9, v2

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v9, p3

    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    .line 257
    :try_start_0
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :goto_1
    const-wide/16 v11, 0x0

    if-eqz v1, :cond_7

    .line 261
    iget-object v1, v7, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    if-eqz v1, :cond_4

    iget-object v1, v7, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    .line 262
    iget-object v1, v1, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    if-eqz v1, :cond_4

    .line 263
    iget-object v1, v7, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    .line 264
    iget-object v1, v1, Lgbsdk/common/host/ap;->aq:Lgbsdk/common/host/abbk;

    .line 265
    iget-boolean v1, v1, Lgbsdk/common/host/abbk;->q:Z

    if-eqz v1, :cond_4

    .line 266
    iget-object v1, v0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-nez v3, :cond_4

    const-string v1, "DbStore:Filter no launch event."

    .line 267
    invoke-static {v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    const-string v1, "pack"

    const/4 v2, 0x0

    .line 269
    :try_start_1
    invoke-virtual {p1, v2}, Lgbsdk/common/host/aban;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v9, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    cmp-long v1, v3, v11

    if-gez v1, :cond_7

    .line 271
    iget-object v0, v0, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {p0, v2}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v10, :cond_6

    .line 298
    invoke-static {v9}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    return-void

    .line 299
    :cond_7
    :goto_2
    :try_start_2
    iget-wide v1, v0, Lgbsdk/common/host/abag;->bC:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v3, v1, v11

    if-lez v3, :cond_8

    const-string v2, "event"

    .line 300
    :try_start_3
    iget-object v3, v0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    iget-wide v5, v0, Lgbsdk/common/host/abag;->bC:J

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    :cond_8
    iget-wide v5, v0, Lgbsdk/common/host/abag;->bH:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v1, v5, v11

    if-lez v1, :cond_9

    const-string v2, "eventv3"

    .line 304
    :try_start_4
    iget-object v3, v0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    :cond_9
    iget-wide v5, v0, Lgbsdk/common/host/abag;->bN:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v1, v5, v11

    if-lez v1, :cond_a

    const-string v2, "event_misc"

    .line 308
    :try_start_5
    iget-object v3, v0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;Ljava/lang/String;ZJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    if-eqz v10, :cond_b

    .line 312
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    if-eqz v10, :cond_c

    goto :goto_4

    .line 315
    :goto_3
    :try_start_6
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v10, :cond_c

    .line 318
    :goto_4
    invoke-static {v9}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v10, :cond_d

    invoke-static {v9}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_d
    throw v1
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abag;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abag;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    sget-object v3, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "afe454bd9795623969a1d65a1d0e491d"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResult, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 432
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 433
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abag;

    .line 435
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lgbsdk/common/host/aban;->b:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x337f9800

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 437
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 443
    :cond_2
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abah;->bB:Lgbsdk/common/host/abah$ab;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 444
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 446
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/abag;

    .line 447
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 448
    invoke-virtual {p0, v4, v2, v0, v1}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    const-string v5, "DELETE FROM pack WHERE _id=?"

    :try_start_3
    new-array v6, v2, [Ljava/lang/String;

    .line 450
    iget-wide v7, v4, Lgbsdk/common/host/aban;->a:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 454
    :try_start_4
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 456
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgbsdk/common/host/abag;

    .line 457
    iget-object v1, p2, Lgbsdk/common/host/abag;->bI:Lgbsdk/common/host/abad;

    if-eqz v1, :cond_6

    .line 458
    invoke-virtual {p0, v3}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;)Z

    .line 460
    :cond_6
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 461
    iget-wide v4, p2, Lgbsdk/common/host/aban;->a:J

    iget v1, p2, Lgbsdk/common/host/abag;->m:I

    add-int/2addr v1, v2

    iput v1, p2, Lgbsdk/common/host/abag;->m:I

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE pack SET _fail="

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 463
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 467
    :cond_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 469
    :goto_3
    :try_start_5
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v0, v3

    .line 471
    :goto_4
    invoke-static {v0}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public final a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lgbsdk/common/host/abaf;Lgbsdk/common/host/abag;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v15, p5

    move-object/from16 v14, p6

    move-object/from16 v13, p7

    move-object/from16 v12, p9

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v0, v11

    const/4 v10, 0x1

    aput-object v8, v0, v10

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object v15, v0, v1

    const/4 v1, 0x5

    aput-object v14, v0, v1

    const/4 v1, 0x6

    aput-object v13, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object v12, v0, v1

    sget-object v1, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "028d84476e30da84ca686b45251d76a4"

    invoke-static {v0, v7, v1, v11, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packLostData, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    .line 192
    iput-object v13, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 193
    iput-object v13, v15, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 195
    invoke-virtual/range {v0 .. v5}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abad;ZLgbsdk/common/host/abab;Lgbsdk/common/host/abaf;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    .line 196
    invoke-virtual/range {v0 .. v6}, Lgbsdk/common/host/abah;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v0

    .line 198
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v8, Lgbsdk/common/host/abad;->n:Z

    .line 200
    invoke-virtual {v7, v12}, Lgbsdk/common/host/abah;->a([J)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, v8, Lgbsdk/common/host/abad;->n:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v12

    move-object v3, v14

    move-object v1, v15

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 201
    iget-boolean v2, v8, Lgbsdk/common/host/abad;->n:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move-object/from16 v2, p3

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    iget-boolean v4, v8, Lgbsdk/common/host/abad;->n:Z

    if-nez v4, :cond_5

    move-object v3, v9

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    const/4 v6, 0x1

    move-object v10, v1

    const/4 v5, 0x0

    move-object v11, v2

    move-object v2, v12

    move-object v12, v3

    move-object/from16 v13, p8

    move-object v3, v14

    move-object/from16 v14, p9

    move-object v1, v15

    move-object v15, v4

    invoke-virtual/range {v8 .. v15}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    .line 202
    invoke-virtual {v7, v1, v5, v3, v6}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_3
    move v4, v0

    .line 205
    :goto_4
    sget-object v0, Lgbsdk/common/host/abah;->bz:[Lgbsdk/common/host/aban;

    array-length v0, v0

    if-ge v4, v0, :cond_7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v15, v1

    move v1, v4

    move-object v14, v2

    move-object/from16 v2, p6

    move-object v13, v3

    move-object/from16 v3, p7

    move v4, v8

    const/4 v12, 0x0

    move-object/from16 v5, p8

    const/4 v11, 0x1

    move-object/from16 v6, p9

    .line 206
    invoke-virtual/range {v0 .. v6}, Lgbsdk/common/host/abah;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v4

    .line 207
    invoke-virtual {v7, v14}, Lgbsdk/common/host/abah;->a([J)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    const/4 v3, 0x1

    move-object v11, v0

    const/4 v0, 0x0

    move-object v12, v1

    move-object v1, v13

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object v5, v15

    move-object v15, v2

    .line 208
    invoke-virtual/range {v8 .. v15}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    .line 209
    invoke-virtual {v7, v5, v0, v1, v3}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_5

    :cond_6
    move-object v1, v13

    move-object v5, v15

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v2, p9

    move-object v3, v1

    move-object v1, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abag;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lgbsdk/common/host/abad;",
            "Lgbsdk/common/host/abag;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Lorg/json/JSONArray;",
            "[J",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abag;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    move-object/from16 v9, p8

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v11, 0x1

    aput-object v8, v0, v11

    const/4 v2, 0x2

    aput-object v15, v0, v2

    const/4 v2, 0x3

    aput-object v14, v0, v2

    const/4 v2, 0x4

    aput-object p5, v0, v2

    const/4 v2, 0x5

    aput-object v13, v0, v2

    const/4 v2, 0x6

    aput-object v12, v0, v2

    const/4 v2, 0x7

    aput-object v9, v0, v2

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "85d3cce7350c7d41d03b96002d7f2884"

    invoke-static {v0, v7, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "packCurrentData, "

    .line 148
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    .line 149
    iget-object v0, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;)Z

    move-result v10

    .line 150
    iget-object v3, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lgbsdk/common/host/abah;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v0

    .line 151
    invoke-virtual {v7, v8, v9}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abad;Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v1

    const/16 v17, 0x0

    if-nez v10, :cond_2

    .line 153
    invoke-virtual {v7, v13}, Lgbsdk/common/host/abah;->a([J)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v10, :cond_3

    move-object v2, v8

    goto :goto_1

    :cond_3
    move-object/from16 v2, v17

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v6, 0x1

    move-object v11, v2

    move-object v2, v12

    move-object v12, v3

    move-object v5, v13

    move-object v13, v4

    move-object v4, v14

    move-object/from16 v14, p5

    move-object v3, v15

    move-object/from16 v15, p6

    move-object/from16 v16, v1

    .line 154
    invoke-virtual/range {v9 .. v16}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    if-nez v1, :cond_4

    .line 156
    sget-object v1, Lgbsdk/common/host/abah;->bz:[Lgbsdk/common/host/aban;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 157
    invoke-virtual/range {p3 .. p3}, Lgbsdk/common/host/aban;->K()Lgbsdk/common/host/aban;

    move-result-object v1

    check-cast v1, Lgbsdk/common/host/abag;

    .line 158
    invoke-virtual {v1}, Lgbsdk/common/host/abag;->N()[B

    .line 159
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v7, v3, v6, v4, v6}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    :goto_2
    move v1, v0

    .line 165
    :goto_3
    sget-object v0, Lgbsdk/common/host/abah;->bz:[Lgbsdk/common/host/aban;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 166
    iget-object v9, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    move-object v15, v3

    move-object v3, v9

    move-object v14, v4

    move v4, v10

    move-object v13, v5

    move-object/from16 v5, p5

    const/4 v12, 0x1

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lgbsdk/common/host/abah;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v1

    .line 167
    invoke-virtual {v7, v13}, Lgbsdk/common/host/abah;->a([J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    iget-object v0, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v11, v8

    goto :goto_4

    :cond_5
    move-object/from16 v11, v17

    :goto_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v3, 0x1

    move-object v12, v0

    move-object v13, v2

    move-object v0, v14

    move-object/from16 v14, p5

    move-object v2, v15

    move-object/from16 v15, p6

    .line 169
    invoke-virtual/range {v9 .. v16}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    .line 170
    invoke-virtual {v7, v2, v3, v0, v3}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_5

    :cond_6
    move-object v0, v14

    move-object v2, v15

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v5, p6

    move-object v4, v0

    move-object v3, v2

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abag;Lgbsdk/common/host/abaf;Lgbsdk/common/host/abab;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/HashMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lgbsdk/common/host/abad;",
            "Lgbsdk/common/host/abag;",
            "Lgbsdk/common/host/abaf;",
            "Lgbsdk/common/host/abab;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Lorg/json/JSONArray;",
            "[J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p6

    move-object/from16 v13, p8

    move-object/from16 v9, p9

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v0, v6

    const/4 v12, 0x1

    aput-object v8, v0, v12

    const/4 v1, 0x2

    aput-object v15, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object v14, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object v13, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    sget-object v1, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v2, "a9444e4909ea5bce97b2cb9e7e8f869b"

    invoke-static {v0, v7, v1, v6, v2}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "packHistoryData, "

    .line 171
    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 172
    invoke-virtual/range {v0 .. v5}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abad;ZLgbsdk/common/host/abab;Lgbsdk/common/host/abaf;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v16

    .line 173
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    iput-boolean v6, v8, Lgbsdk/common/host/abad;->n:Z

    .line 175
    iget-object v3, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lgbsdk/common/host/abah;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v0

    .line 177
    invoke-virtual {v7, v8, v9}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abad;Ljava/util/HashMap;)Lorg/json/JSONArray;

    move-result-object v1

    .line 179
    iget-boolean v2, v8, Lgbsdk/common/host/abad;->n:Z

    if-eqz v2, :cond_3

    .line 180
    iget-object v2, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lgbsdk/common/host/abah;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v11, v8

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object v11, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v6, 0x1

    move-object v12, v2

    move-object v5, v13

    move-object v13, v3

    move-object v4, v14

    move-object/from16 v14, p7

    move-object v3, v15

    move-object/from16 v15, p8

    move-object/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    goto :goto_1

    :cond_3
    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v12, p5

    move-object/from16 v13, v16

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, v1

    .line 182
    invoke-virtual/range {v9 .. v16}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    .line 184
    :goto_1
    invoke-virtual {v7, v3, v6, v4, v6}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    move v1, v0

    .line 186
    :goto_2
    sget-object v0, Lgbsdk/common/host/abah;->bz:[Lgbsdk/common/host/aban;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 187
    iget-object v9, v8, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move-object v15, v3

    move-object v3, v9

    move-object v14, v4

    move v4, v10

    move-object v13, v5

    move-object/from16 v5, p7

    const/4 v12, 0x1

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lgbsdk/common/host/abah;->a(ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z[Lorg/json/JSONArray;[J)I

    move-result v1

    .line 188
    invoke-virtual {v7, v13}, Lgbsdk/common/host/abah;->a([J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    const/4 v3, 0x1

    move-object v12, v0

    move-object v13, v2

    move-object v0, v14

    move-object/from16 v14, p7

    move-object v2, v15

    move-object/from16 v15, p8

    .line 189
    invoke-virtual/range {v9 .. v16}, Lgbsdk/common/host/abag;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lorg/json/JSONArray;[Lorg/json/JSONArray;[JLorg/json/JSONArray;)V

    .line 190
    invoke-virtual {v7, v2, v3, v0, v3}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abag;ZLandroid/database/sqlite/SQLiteDatabase;Z)V

    goto :goto_3

    :cond_4
    move-object v0, v14

    move-object v2, v15

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v5, p8

    move-object v4, v0

    move-object v3, v2

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "ee67712279299488f5fc1c362998739b"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const-string v1, "needLaunch, "

    .line 48
    invoke-static {v1}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lgbsdk/common/host/abah;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lgbsdk/common/host/abah;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    iput-object p1, p0, Lgbsdk/common/host/abah;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a([J)Z
    .locals 7

    const/4 v0, 0x0

    .line 210
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    aget-wide v1, p1, v3

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    const/4 v1, 0x2

    aget-wide v1, p1, v1

    cmp-long p1, v1, v4

    if-lez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/aban;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventv3"

    const-string v1, "event"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    sget-object v4, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "6f0b28396b69a63a6e65b6fde690aa72"

    invoke-static {v2, p0, v4, v3, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "save, "

    .line 472
    invoke-static {v2}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 475
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    :try_start_0
    iget-object v4, p0, Lgbsdk/common/host/abah;->bB:Lgbsdk/common/host/abah$ab;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 480
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 482
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v6, v3

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgbsdk/common/host/aban;

    .line 483
    invoke-virtual {v7}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_2

    .line 484
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    goto :goto_1

    .line 486
    :cond_2
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 488
    :goto_1
    invoke-virtual {v7, v6}, Lgbsdk/common/host/aban;->a(Landroid/content/ContentValues;)V

    .line 489
    invoke-virtual {v4, v8, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    iput-wide v8, v7, Lgbsdk/common/host/aban;->a:J

    .line 490
    invoke-virtual {v7}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 491
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_3
    invoke-virtual {v7}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 493
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_4
    instance-of v8, v7, Lgbsdk/common/host/abad;

    if-eqz v8, :cond_1

    .line 495
    check-cast v7, Lgbsdk/common/host/abad;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v4, v3

    .line 500
    :goto_2
    :try_start_2
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 502
    :goto_3
    invoke-static {v4}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 506
    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgbsdk/common/host/aban;

    .line 507
    invoke-virtual {v4}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 508
    check-cast v4, Lgbsdk/common/host/abak;

    .line 509
    invoke-static {}, Lgbsdk/common/host/abaq;->O()Lgbsdk/common/host/abaq;

    move-result-object v5

    iget-object v6, v4, Lgbsdk/common/host/abak;->l:Ljava/lang/String;

    iget-object v7, v4, Lgbsdk/common/host/abak;->m:Ljava/lang/String;

    iget-object v8, v4, Lgbsdk/common/host/abak;->n:Ljava/lang/String;

    iget-wide v9, v4, Lgbsdk/common/host/abak;->bC:J

    iget-wide v11, v4, Lgbsdk/common/host/abak;->q:J

    iget-object v13, v4, Lgbsdk/common/host/abak;->o:Ljava/lang/String;

    invoke-virtual/range {v5 .. v13}, Lgbsdk/common/host/abaq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_4

    .line 511
    :cond_7
    invoke-virtual {v4}, Lgbsdk/common/host/aban;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 512
    check-cast v4, Lgbsdk/common/host/abae;

    .line 513
    invoke-static {}, Lgbsdk/common/host/abaq;->O()Lgbsdk/common/host/abaq;

    move-result-object v5

    iget-object v6, v4, Lgbsdk/common/host/abae;->n:Ljava/lang/String;

    iget-object v4, v4, Lgbsdk/common/host/abae;->l:Ljava/lang/String;

    if-eqz v4, :cond_8

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v7, v3

    :goto_5
    invoke-virtual {v5, v6, v7}, Lgbsdk/common/host/abaq;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    .line 518
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 522
    :cond_9
    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgbsdk/common/host/abad;

    .line 523
    invoke-static {}, Lgbsdk/common/host/abdk;->P()Lgbsdk/common/host/abdk;

    move-result-object v1

    iget-wide v2, v0, Lgbsdk/common/host/aban;->a:J

    iget-object v0, v0, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lgbsdk/common/host/abdk;->b(JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    .line 526
    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    :cond_a
    return-void

    :catchall_4
    move-exception p1

    .line 527
    invoke-static {v4}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw p1
.end method

.method public declared-synchronized o(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lgbsdk/common/host/abag;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    monitor-enter p0

    const/4 v12, 0x1

    :try_start_0
    new-array v1, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v1, v13

    sget-object v2, Lgbsdk/common/host/abah;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "000042ef3b5b2f3a944c23980824f301"

    invoke-static {v1, v11, v2, v13, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    monitor-exit p0

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lgbsdk/common/host/abad;

    .line 53
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "terminate"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lgbsdk/common/host/abab;

    .line 54
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "page"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lgbsdk/common/host/abaf;

    .line 55
    sget-object v1, Lgbsdk/common/host/abah;->by:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lgbsdk/common/host/abag;

    .line 56
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_2
    new-array v9, v1, [Lorg/json/JSONArray;

    new-array v8, v1, [J

    .line 66
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v1, v11, Lgbsdk/common/host/abah;->bB:Lgbsdk/common/host/abah$ab;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 69
    :try_start_3
    invoke-virtual {v11, v6, v7}, Lgbsdk/common/host/abah;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/HashMap;)V

    .line 71
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "SELECT * FROM launch ORDER BY _id LIMIT 5"

    .line 72
    invoke-virtual {v6, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 75
    :try_start_4
    iget-object v1, v11, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    .line 76
    iget-object v1, v1, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 77
    iget-object v4, v1, Lgbsdk/common/host/av;->e:Ljava/lang/String;

    .line 78
    iget-boolean v3, v1, Lgbsdk/common/host/av;->i:Z

    const-wide/high16 v18, -0x8000000000000000L

    const-wide v20, 0x7fffffffffffffffL

    move-object v2, v0

    move-wide/from16 v24, v18

    move-wide/from16 v22, v20

    .line 79
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v1, :cond_5

    .line 80
    :try_start_5
    invoke-virtual {v14, v5}, Lgbsdk/common/host/abad;->a(Landroid/database/Cursor;)I

    .line 81
    iget-object v1, v14, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    iput-object v1, v10, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    .line 83
    invoke-virtual {v11, v14, v0}, Lgbsdk/common/host/abah;->a(Lgbsdk/common/host/abad;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v26

    .line 85
    iget-object v1, v14, Lgbsdk/common/host/aban;->d:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    xor-int/lit8 v1, v3, 0x1

    .line 86
    iput-boolean v1, v14, Lgbsdk/common/host/abad;->n:Z

    .line 87
    iget-object v1, v11, Lgbsdk/common/host/abah;->an:Lgbsdk/common/host/ap;

    .line 88
    iget-object v1, v1, Lgbsdk/common/host/ap;->aw:Lgbsdk/common/host/av;

    .line 89
    invoke-virtual {v1}, Lgbsdk/common/host/av;->a()Ljava/util/Map;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_1

    .line 90
    :try_start_6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    iget-object v12, v14, Lgbsdk/common/host/abad;->bD:Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v13, v27

    check-cast v13, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :catchall_0
    :cond_1
    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move v12, v3

    move-object v3, v14

    move-object v13, v4

    move-object v4, v10

    move-object/from16 v27, v5

    move-object v5, v6

    move-object/from16 v28, v6

    move-object v6, v9

    move-object/from16 v29, v7

    move-object v7, v8

    move-object/from16 v30, v8

    move-object/from16 v8, v17

    move-object/from16 v31, v9

    move-object/from16 v9, v29

    .line 92
    :try_start_7
    invoke-virtual/range {v1 .. v9}, Lgbsdk/common/host/abah;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abag;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/ArrayList;Ljava/util/HashMap;)V

    move v3, v12

    move-object v4, v13

    move-object/from16 v2, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    goto :goto_2

    :cond_2
    move v12, v3

    move-object v13, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    .line 94
    iget-wide v1, v14, Lgbsdk/common/host/aban;->a:J

    cmp-long v3, v1, v22

    if-gez v3, :cond_3

    move-wide/from16 v22, v1

    .line 97
    :cond_3
    iget-wide v1, v14, Lgbsdk/common/host/aban;->a:J

    cmp-long v3, v1, v24

    if-lez v3, :cond_4

    move-wide/from16 v24, v1

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-object v3, v14

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v15

    move-object/from16 v7, v28

    move-object/from16 v8, v31

    move-object/from16 v9, v30

    move-object/from16 v32, v10

    move-object/from16 v10, v29

    .line 100
    invoke-virtual/range {v1 .. v10}, Lgbsdk/common/host/abah;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abag;Lgbsdk/common/host/abaf;Lgbsdk/common/host/abab;Landroid/database/sqlite/SQLiteDatabase;[Lorg/json/JSONArray;[JLjava/util/HashMap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v3, v12

    move-object v4, v13

    move-object/from16 v2, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    :goto_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    :goto_3
    move-object/from16 v2, v27

    move-object/from16 v12, v28

    goto/16 :goto_6

    :cond_5
    move-object v13, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    cmp-long v0, v22, v20

    if-eqz v0, :cond_6

    cmp-long v0, v24, v18

    if-eqz v0, :cond_6

    :try_start_8
    const-string v0, "DELETE FROM launch WHERE _id>=? AND _id<=?"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    const/4 v1, 0x2

    :try_start_9
    new-array v1, v1, [Ljava/lang/String;

    .line 105
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v12, v28

    :try_start_a
    invoke-virtual {v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v12, v28

    goto :goto_5

    :cond_6
    move-object/from16 v12, v28

    .line 108
    :goto_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v1, p0

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v32

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v9, v31

    move-object/from16 v10, v30

    .line 109
    invoke-virtual/range {v1 .. v10}, Lgbsdk/common/host/abah;->a(Lorg/json/JSONObject;Lgbsdk/common/host/abad;Lgbsdk/common/host/abab;Lgbsdk/common/host/abaf;Lgbsdk/common/host/abag;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;[J)V

    .line 112
    :cond_7
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 118
    :try_start_b
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v27, v5

    move-object v12, v6

    :goto_5
    move-object/from16 v2, v27

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v12, v6

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v12, v2

    .line 119
    :goto_6
    :try_start_c
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz v2, :cond_8

    .line 123
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception v0

    move-object v6, v12

    .line 125
    :try_start_e
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_8
    :goto_7
    move-object v6, v12

    .line 128
    :goto_8
    invoke-static {v6}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    monitor-exit p0

    return-object v17

    :catchall_9
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_9

    .line 129
    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 131
    :try_start_10
    invoke-static {v2}, Lgbsdk/common/host/abdn;->a(Ljava/lang/Throwable;)V

    .line 134
    :cond_9
    :goto_9
    invoke-static {v12}, Lgbsdk/common/host/abdh;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
