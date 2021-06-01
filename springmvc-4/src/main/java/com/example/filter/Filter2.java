package com.example.filter;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author zzh
 * @date 2021年06月01日
 */
public class Filter2 extends OncePerRequestFilter {

    private String filter1Param;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        System.out.println("Filter2#doFilterInternal");
        filterChain.doFilter(request, response);
    }

    public void setFilter1Param(String filter1Param) {
        this.filter1Param = filter1Param;
    }
}
