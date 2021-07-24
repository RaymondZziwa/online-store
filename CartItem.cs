﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BABY_COLLECTION
{
    public class CartItem
    {
        public int ProductId
        {
            get;
            set;
        }
        public string ProductName {
            get;
            set;
        }
        public string ProductImage
        {
            get;
            set;
        }
        public float price
        {
            get;
            set;
        }

        public CartItem(string ProductName, string ProductImage, float price)
        {
            this.ProductName = ProductName;
            this.ProductImage = ProductImage;
            this.price = price;
        }
    }
}