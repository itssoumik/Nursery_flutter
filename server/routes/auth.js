const express= require("express");
const User =require("../models/user");
const bcryptjs =require("bcryptjs");

const authRouter= express.Router();

authRouter.post("/signup", async (req, res) => {
  try {
    const { username, password, email, name } = req.body;

    const existingUser = await User.findOne({ email });
    if (existingUser) {
      return res.status(400).json({ msg: "User with same email already exists" });
    }
    const hashedPassword = await bcryptjs.hash(password,8);

    let user = new User({
      email,
      password: hashedPassword,
      username,
    });
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports=authRouter;