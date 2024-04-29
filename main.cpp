#include <iostream>
#include <hiredis/hiredis.h>

int main(void)
{
    redisContext *ctx = redisConnect("127.0.0.1", 6379); // 替换为你的 Redis 服务器 IP 和端口
    if (ctx == NULL || ctx->err)
    {
        if (ctx)
        {
            printf("Error: %s\n", ctx->errstr);
            // 处理连接错误的逻辑
        }
        else
        {
            printf("Can't allocate redis context\n");
            // 处理内存分配错误的逻辑
        }
        return 0;
    }
    
    // 进行身份验证（用户名和密码）
    redisReply *reply = (redisReply *)redisCommand(ctx, "AUTH mypassword"); // 替换为你的 Redis 密码
    if (reply == NULL || reply->type == REDIS_REPLY_ERROR)
    {
        printf("Authentication failed: %s\n", reply ? reply->str : "NULL");
        freeReplyObject(reply);
        return 0;
    }
    freeReplyObject(reply);

    printf("链接成功");
    reply = (redisReply *)redisCommand(ctx,"set k1 hello");
    if (reply == NULL || reply->type == REDIS_REPLY_ERROR)
    {
        printf("redisCommand failed: %s\n", reply ? reply->str : "NULL");
        freeReplyObject(reply);
        return 0;
    }
    freeReplyObject(reply);
    reply = (redisReply *)redisCommand(ctx,"get k1");
    if (reply == NULL || reply->type == REDIS_REPLY_ERROR)
    {
        printf("redisCommand failed: %s\n", reply ? reply->str : "NULL");
        freeReplyObject(reply);
        return 0;
    }    
    printf("redisCommand success: %s\n", reply ? reply->str : "NULL");
    freeReplyObject(reply);

    // 关闭redis
    redisFree(ctx);
    return 0;
}