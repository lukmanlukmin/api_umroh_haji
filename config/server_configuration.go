package config

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"github.com/lukmanlukmin/api_umroh_haji/middleware"
	"os"
)

// default server router configuration
func SetupRouter() *gin.Engine {
	defaultMiddleware := middleware.DefaultMiddleware{}
	router := gin.Default()
	router.Use(defaultMiddleware.CORSMiddleware())
	return router
}