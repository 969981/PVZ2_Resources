.class Lcn/sharesdk/tencent/qq/e$1;
.super Ljava/lang/Thread;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/e;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:I

.field final synthetic m:Lcn/sharesdk/tencent/qq/e;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/e$1;->m:Lcn/sharesdk/tencent/qq/e;

    iput-object p2, p0, Lcn/sharesdk/tencent/qq/e$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/sharesdk/tencent/qq/e$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/tencent/qq/e$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/sharesdk/tencent/qq/e$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/sharesdk/tencent/qq/e$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcn/sharesdk/tencent/qq/e$1;->f:Ljava/lang/String;

    iput-object p8, p0, Lcn/sharesdk/tencent/qq/e$1;->g:Ljava/lang/String;

    iput p9, p0, Lcn/sharesdk/tencent/qq/e$1;->h:I

    iput-object p10, p0, Lcn/sharesdk/tencent/qq/e$1;->i:Ljava/lang/String;

    iput-object p11, p0, Lcn/sharesdk/tencent/qq/e$1;->j:Ljava/lang/String;

    iput-object p12, p0, Lcn/sharesdk/tencent/qq/e$1;->k:Ljava/lang/String;

    iput p13, p0, Lcn/sharesdk/tencent/qq/e$1;->l:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 130
    const-string v2, "ShareSDK"

    .line 0
    const-string v0, " QQ ShareActivity path: "

    const-string v3, " QQ ShareActivity path catch "

    .line 132
    :try_start_0
    iget-object v4, v1, Lcn/sharesdk/tencent/qq/e$1;->m:Lcn/sharesdk/tencent/qq/e;

    invoke-static {v4}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/tencent/qq/e;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lcn/sharesdk/tencent/qq/e$1;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 135
    :try_start_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 136
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    :goto_0
    move-object v10, v4

    .line 139
    iget-object v5, v1, Lcn/sharesdk/tencent/qq/e$1;->m:Lcn/sharesdk/tencent/qq/e;

    iget-object v6, v1, Lcn/sharesdk/tencent/qq/e$1;->b:Ljava/lang/String;

    iget-object v7, v1, Lcn/sharesdk/tencent/qq/e$1;->c:Ljava/lang/String;

    iget-object v8, v1, Lcn/sharesdk/tencent/qq/e$1;->d:Ljava/lang/String;

    iget-object v9, v1, Lcn/sharesdk/tencent/qq/e$1;->a:Ljava/lang/String;

    iget-object v11, v1, Lcn/sharesdk/tencent/qq/e$1;->e:Ljava/lang/String;

    iget-object v12, v1, Lcn/sharesdk/tencent/qq/e$1;->f:Ljava/lang/String;

    iget-object v13, v1, Lcn/sharesdk/tencent/qq/e$1;->g:Ljava/lang/String;

    iget v14, v1, Lcn/sharesdk/tencent/qq/e$1;->h:I

    iget-object v15, v1, Lcn/sharesdk/tencent/qq/e$1;->i:Ljava/lang/String;

    iget-object v0, v1, Lcn/sharesdk/tencent/qq/e$1;->j:Ljava/lang/String;

    iget-object v3, v1, Lcn/sharesdk/tencent/qq/e$1;->k:Ljava/lang/String;

    iget v4, v1, Lcn/sharesdk/tencent/qq/e$1;->l:I

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-static/range {v5 .. v18}, Lcn/sharesdk/tencent/qq/e;->a(Lcn/sharesdk/tencent/qq/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 142
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 143
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " QQ ShareActivity run catch "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_1
    return-void
.end method
